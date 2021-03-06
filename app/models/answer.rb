class Answer < ApplicationRecord
  belongs_to :question
  has_many :rounds
  has_many :categories, through: :questions
  validates :question_id, presence: true
  validates :rank, presence: true
  validates :content, presence: true
end





