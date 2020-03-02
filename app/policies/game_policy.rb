class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
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
  end

  def mcq?
    record.user == user
  end

  def mcq_score?
    record.user == user
  end

  def slide?
    user == record.user
  end

end
