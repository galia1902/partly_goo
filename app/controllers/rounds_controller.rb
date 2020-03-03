class RoundsController < ApplicationController
  skip_before_action :authenticate_user!, if: :tryout_game?

  def create
    # Note! We don't get here if game_mode == slide, b/c i went right to score! -Sean


    @game = Game.find(params[:game_id])
    @round = Round.new(round_params)
    @round.game = @game
    authorize @round

    if @game.game_mode == "MCQ"
      redirect_to mcq_path(@game)
    else # implies @game.game_mode == tryout
      redirect_to game_path(@game)
    end
  end

  private

  def round_params
    params.require(:round).permit(:duration, :game_id, :question_id, :answer_id)
  end

  def tryout_game?
    game = Game.find(params[:game_id])
    game.game_mode == 'Try Out'
  end
end
