# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

quest = Question.new(content: 'learn how to code')
quest.save!
answer1 = ['for free', 1]
answer2 = ['online', 2]
answer3 = ['apps', 3]
answer4 = ['python', 4]

answers = [answer1, answer2, answer3, answer4]
answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end


