class RoundPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create
    # only the owner of the current game can create a round
    record.game.user == user
  end
end
