class GamesController < ApplicationController
  skip_before_action :authenticate_user!, if: :tryout_game?

  before_action :set_game, only: [:score, :game, :mcq, :mcq_score, :slide, :score_slide_game, :show_slide_score ]

  def create
     # creates a game with our tryout user and redirects to our game html
     @game = Game.new(game_params)
     authorize @game
    # no user yet (try out)
    if @game.game_mode == "Try Out"
      if user_signed_in?
        @game.user = current_user
      else
        @game.user = User.find_by(email: 'tryout_guy@partly.com')
      end
      @game.save!
      redirect_to game_path(@game)
    elsif @game.game_mode == "MCQ"
      @game.user = current_user
      @game.save!
      redirect_to mcq_path(@game)
    elsif @game.game_mode == "Sortable"
      @game.user = current_user
      @game.save!
      redirect_to slide_path(@game)
    end
  end

  def game
    # looks for rounds with our game id
    @rounds = Round.where(game_id: @game.id)
    # if no round exists it will start a with a random question and the 4 possible answers but randomized
    #check if there are rounds
    if @rounds[0].nil?
      @question = rand_quest
      @answers = Answer.where(question_id: @question.id).shuffle
      session[:round_ordered_answers] = @answers
      # if round exists (question already answered) render the page with the answered question and the answers in the right order
    else
      @question = Question.find(@rounds.last.question_id)
      @answers = []
      session[:round_ordered_answers].each do |answer_data|
      @answers << Answer.new(answer_data)
      end
    end
  end

  def mcq
    # looks for rounds with our game id
    @rounds = Round.where(game_id: @game.id)

    # if no round exists it will start a with a random question and the 4 possible answers but randomized
    #check if there aree rounds
    if @rounds[0].nil? || @rounds.count < 5
      @question = rand_quest
      @answers = Answer.where(question_id: @question.id).shuffle
    else
      redirect_to mcq_score_path(@game)
    end
  end

  def mcq_score
    @rounds = Round.where(game_id: @game.id)
  end

  def slide
    @rounds = Round.where(game_id: @game.id)
    if @rounds[0].nil?
      @question = rand_quest
      @answers = Answer.where(question_id: @question.id).shuffle
      session[:round_ordered_answers] = @answers
    elsif @rounds.count == 3
      redirect_to slide_score_path(@game) #placeholder for now
    else
      @question = Question.find(@rounds.last.question_id)
      @answers = []
      session[:round_ordered_answers].each do |answer_data|
        @answers << Answer.new(answer_data)
      end
    end
  end

  def score_slide_game
    sorted_answers = []
    sorted_answers << Answer.find(params[:answer_1])
    sorted_answers << Answer.find(params[:answer_2])
    sorted_answers << Answer.find(params[:answer_3])
    sorted_answers << Answer.find(params[:answer_4])

    session[:sorted_answers] = sorted_answers
    game_score = 0
    sorted_answers.each_with_index do |answer, indx|
      if answer.rank == indx + 1
          game_score += 1
      end
    end
    @game.update(score: game_score)
    redirect_to show_slide_score_path(@game)
  end

  def show_slide_score
    @answers = session[:sorted_answers]
    @answers.map! do |answer_data|
      answer = Answer.new(answer_data)
    end
    @question = @answers[0].question
  end

  private

  def set_game
    @game = Game.find(params[:id])
    authorize @game
  end

  def game_params
    params.require(:game).permit(:game_mode)
  end

  # get random question
  def rand_quest
    # Get initial question
    count = Question.count
    random_offset = rand(count)
    random_quest = Question.offset(random_offset).first

    # Initialize storage for recent questions if not yet initialized
    if session[:recent_questions].nil?
      session[:recent_questions] = []
    end

    # Keep on getting questions until we find a 'new' one
    while session[:recent_questions].include?(random_quest.id)
      count = Question.count
      random_offset = rand(count)
      random_quest = Question.offset(random_offset).first
    end

    # Update list of old questions
    session[:recent_questions] << random_quest.id
    if session[:recent_questions].count > 30
      session[:recent_questions].shift
    end
    return random_quest
  end

  def tryout_game?
  # 1. we are about to create a new game, with a mode of 'Try Out'
    if params[:action] == 'create'
      return true if params[:game][:game_mode] == 'Try Out'
    else
      # 2. there is already a game, which has a mode of 'Try Out'
      game = Game.find(params[:id])
      return !game.nil? && game.game_mode == 'Try Out'
    end
  end
end
