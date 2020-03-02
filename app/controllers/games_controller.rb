class GamesController < ApplicationController
  skip_before_action :authenticate_user!, if: :tryout_game?

  before_action :set_game, only: [:score, :game, :slide]

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
      redirect_to game_path(@game)
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
    #check if there aree rounds
    if @rounds[0].nil?
      @question = rand_quest
      @answers = Answer.where(question_id: @question.id).shuffle
      session[:tryout_answers] = @answers

    elsif @game.game_mode == "MCQ"
      @question = rand_quest
      @answers = Answer.where(question_id: @question.id).shuffle
      @game = Game.find(@game.id)
      # if round exists (question already answered) render the page with the answered question and the answers in the right order
    else
      @question = Question.find(@rounds.last.question_id)
      @answers = []
      session[:tryout_answers].each do |answer_data|
        @answers << Answer.new(answer_data)
      end
    end
  end

  def score
  end

  def slide
    @rounds = Round.where(game_id: @game.id)
    if @rounds[0].nil?
      @question = rand_quest
      @answers = Answer.where(question_id: @question.id).shuffle
      session[:tryout_answers] = @answers
    elsif @rounds.count == 3
      redirect_to slide_score_path(@game) #placeholder for now
    else
      @question = Question.find(@rounds.last.question_id)
      @answers = []
      session[:tryout_answers].each do |answer_data|
        @answers << Answer.new(answer_data)
      end
    end
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
    count = Question.count
    random_offset = rand(count)
    return random_quest = Question.offset(random_offset).first
  end

  def tryout_game?
  # 1. we are about to create a new game, with a mode of 'Try Out'
  if params[:action] == 'create'
    return true if params[:game][:game_mode] == 'Try Out'
  else
    # 2. there is already a game, which has a mode of 'Try Out'
    game = Game.find(params[:id])
    return true if !game.nil? && game.game_mode == 'Try Out'
    false
  end
end
end
