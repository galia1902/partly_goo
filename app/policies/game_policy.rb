class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # Leaving as-is, for now
      #   --> later, might want to exclude other users's games from scope.
      scope.all
    end

    def create?
      true
    end

    def score?
      record.user == user
    end

    def game?
      record.user == user
    end
  end
end
