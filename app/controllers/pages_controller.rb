class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :how_to]

  def home
     if session[:first_visit].nil?
      session[:first_visit] = true
    end
  end

  def how_to
  end

  def dashboard
    @games = current_user.games
    @color = ["#4688F1","#E8453C","#FABB2D","#3AA757"].sample
  end

end
