class GamesController < ApplicationController
  skip_before_action :authenticate_user!, if: :tryout_game?

  before_action :set_game, only: [:score, :game]

  def create
     # creates a game with our tryout user and redirects to our game html
    @game = Game.new(game_params)
    authorize @game
    # no user yet (try out)
    if @game.game_mode == "Try Out"
      @game.user = User.find_by(email: 'tryout_guy@partly.com')
      @game.save!
      redirect_to game_path(@game)
    end
  end

  def score
  end

  def game
    # looks for rounds with our game id
    @round = Round.where(game_id: @game.id)
    # why do we check for presence here and why is round an array on the next line

    # if no round exists it will start a with a random question and the 4 possible answers but randomized
    if @round[0].nil?
      @question = rand_quest
      @answers = Answer.where(question_id: @question.id).shuffle

      # if round exists (question already answered) render the page with the answered question and the answers in the right order
    else
      @question = Question.find(@round.last.question_id)
      @answers = Answer.where(question_id: @question.id)
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
    end
    false
  end
end
