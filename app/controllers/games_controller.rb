class GamesController < ApplicationController
  before_action :set_game, only: [:score, :game]

  def create
     # creates a game with our tryout user and redirects to our game html
    @game = Game.new(game_params)
    authorize @game
    # no user yet (try out)
    if @game.game_mode == "Try Out"
      @game.user = User.find(1)
      @game.save!
      redirect_to game_path(@game)
    end
  end

  def score
  end

  def game
    # looks for rounds with our game id
    @round = Round.where(game_id: @game.id)

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
end