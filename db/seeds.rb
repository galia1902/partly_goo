# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

quest = Question.new(content: 'learn how to code')
quest.save!
answers[0] = ['for free', 1]
answers[1] = ['online', 2]
answers[2] = ['apps', 3]
answers[3] = ['python', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: 'shark vs')
quest.save!
answers[0] = ['octopus', 1]
answers[1] = ['eagle', 2]
answers[2] = ['dyson', 3]
answers[3] = ['orca', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: 'coke is better than')
quest.save!
answers[0] = ['pepsi', 1]
answers[1] = ['coal', 2]
answers[2] = ['water', 3]
answers[3] = ['crack', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: 'can i eat my')
quest.save!
answers[0] = ['poop', 1]
answers[1] = ['salt lamp', 2]
answers[2] = ['aloe plant', 3]
answers[3] = ['steak medium while pregnant', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: 'why isn\'t 11')
quest.save!
answers[0] = ['a prime number', 1]
answers[1] = ['pronounced onety one', 2]
answers[2] = ['pronounced oneteen', 3]
answers[3] = ['pronounced onety one meme', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

puts "Five so far."



quest = Question.new(content: 'why can\'t')
quest.save!
answers[0] = ['we live together', 1]
answers[1] = ['we be friends', 2]
answers[2] = ['this be love', 3]
answers[3] = ['i cry', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: 'why I always')
quest.save!
answers[0] = ['feel tired', 1]
answers[1] = ['feel sleepy', 2]
answers[2] = ['fart', 3]
answers[3] = ['feel cold', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: 'where to donate a')
quest.save!
answers[0] = ['mattress', 1]
answers[1] = ['car', 2]
answers[2] = ['couch', 3]
answers[3] = ['piano', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: 'when i jump i')
quest.save!
answers[0] = ['wet myself', 1]
answers[1] = ['can hear water', 2]
answers[2] = ['pee a little', 3]
answers[3] = ['hear water', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: 'why is my gold')
quest.save!
answers[0] = ['-fish turning black', 1]
answers[1] = ['-fish floating', 2]
answers[2] = ['-fish dying', 3]
answers[3] = ['-fish swimming sideways', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

puts "We're up to 10 now."



quest = Question.new(content: 'what\'s a boyfriend')
quest.save!
answers[0] = ['jean', 1]
answers[1] = ['and where can i download one', 2]
answers[2] = ['supposed to do', 3]
answers[3] = ['shirt', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: 'what if google was')
quest.save!
answers[0] = ['a guy', 1]
answers[1] = ['a person', 2]
answers[2] = ['deleted', 3]
answers[3] = ['not there', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: 'how do i convert to')
quest.save!
answers[0] = ['islam', 1]
answers[1] = ['judaism', 2]
answers[2] = ['pdf', 3]
answers[3] = ['catholicism', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: '')
quest.save!
answers[0] = ['we live together', 1]
answers[1] = ['we be friends', 2]
answers[2] = ['this be love', 3]
answers[3] = ['i cry', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

quest = Question.new(content: '')
quest.save!
answers[0] = ['we live together', 1]
answers[1] = ['we be friends', 2]
answers[2] = ['this be love', 3]
answers[3] = ['i cry', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest)
  ansi.save!
end

puts "15 woop woop"









