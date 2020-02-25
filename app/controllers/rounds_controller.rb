class RoundsController < ApplicationController
  def create
    @round = Round.new(round_params)
    @game = Game.find(params[:game_id])
    @round.game = @game
    authorize @round
    @round.save!

    redirect_to game_path(@game)
  end

  private

  def round_params
    params.require(:round).permit(:duration, :game_id, :question_id, :answer_id)
  end
end
