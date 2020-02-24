class RoundPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create
    # Can only create a round if mode == tryout || user = owner of current game
    record.game.mode == 'Try Out' || user == record.game.user

    # Anyone can create a round
    # true

    # only the owner of the current game can create a round
    # record.game.user == user
  end
end
