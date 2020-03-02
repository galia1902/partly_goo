class RoundPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.game.game_mode == 'Try Out' || user == record.game.user
  end
end
