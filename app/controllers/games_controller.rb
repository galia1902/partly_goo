class GamesController < ApplicationController
  before_action :set_game, only: [:score, :game]

  def create
    @game = Game.new(game_params)
    # no user yet (try out)
    if @game.game_mode == "Try Out"
      @game.save!
      redirect_to game_path(@game)
    end
  end

  def score
  end

  def game
    @round = Round.where(game_id: @game.id)
    if @round[0].nil?
      @question = rand_quest
      @answers = Answer.where(question_id: @question.id).shuffle

    else

    end
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:game_mode, :user_id)
  end

  def rand_quest
    count = Question.count
    random_offset = rand(count)
    return random_quest = Question.offset(random_offset).first
  end
end
