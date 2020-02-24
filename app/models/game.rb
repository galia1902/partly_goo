class Game < ApplicationRecord
  belongs_to :user
  has_many :rounds
  validates :game_mode, inclusion: { in: ["Try Out","MCQ","Sortable"]}
  validates :score, presence: true, numericality: { only_integer: true}
end


