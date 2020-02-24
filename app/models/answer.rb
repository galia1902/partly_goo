class Answer < ApplicationRecord
  belongs_to :question
  has_many :rounds
  validates :question_id, presence: true
  validates :rank, presence: true
  validates :content, presence: true
end





