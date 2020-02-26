class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :how_to]

  def home
  end

  def how_to
  end

  def dashboard
    @games = current_user.games
  end

end
