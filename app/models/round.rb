class Round < ApplicationRecord
  belongs_to :game
  belongs_to :question
  belongs_to :answer
  validates :question_id, presence: true
  validates :game_id, presence: true
end
