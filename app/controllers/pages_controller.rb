class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :how_to]

  def home
  end

  def how_to
  end

  def dashboard
    @games = current_user.games
    @color = ["#4688F1","#E8453C","#FABB2D","#3AA757"].sample
  end

end
