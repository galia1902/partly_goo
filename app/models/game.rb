class Game < ApplicationRecord
  belongs_to :user
  has_many :rounds
  validates :game_mode, presence: true
  validates :user_id, presence: true
  validates :score, presence: true
end



