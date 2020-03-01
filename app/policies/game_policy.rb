class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # Leaving as-is, for now
      #   --> later, might want to exclude other users's games from scope.
      scope.all
    end
  end

  def create?
    true
  end

  def score?
    record.user == user
  end

  def set_game?
    true
  end

  def game?
    # Can only create a round if mode == tryout || user = owner of current game
    record.game_mode == 'Try Out' || user == record.user

    # Anyone can create a round
    # true

    # only the owner of the current game can create a round
    # record.game.user == user
  end

  def mcq?
    record.user == user
  end


end
