class RoundsController < ApplicationController
  skip_before_action :authenticate_user!, if: :tryout_game?

  def create
    @round = Round.new(round_params)
    @game = Game.find(params[:game_id])
    @round.game = @game
    authorize @round
    @round.save!

    answer_position = session[:tryout_answers].find_index do |answer_data|
      answer_data[:id] == round_params[:answer_id]
    end

    if @game.game_mode == "Sortable"
      redirect_to slide_path(@game)
    else
      redirect_to game_path(@game)
    end

  end

  private

  def round_params
    params.require(:round).permit(:duration, :game_id, :question_id, :answer_id)
  end

  def tryout_game?
    game = Game.find(params[:game_id])
    return true if game.game_mode == 'Try Out'
    return false
  end
end
