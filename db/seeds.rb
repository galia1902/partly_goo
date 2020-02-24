# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Question.destroy_all
puts "Database cleaned! "
puts "Making questions... "

quest = Question.new(content: 'learn how to code')
quest.save!
answers = []
answers << ['for free', 1]
answers << ['online', 2]
answers << ['apps', 3]
answers << ['python', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'shark vs')
quest.save!
answers[0] = ['octopus', 1]
answers[1] = ['eagle', 2]
answers[2] = ['dyson', 3]
answers[3] = ['orca', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'coke is better than')
quest.save!
answers[0] = ['pepsi', 1]
answers[1] = ['coal', 2]
answers[2] = ['water', 3]
answers[3] = ['crack', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'can i eat my')
quest.save!
answers[0] = ['poop', 1]
answers[1] = ['salt lamp', 2]
answers[2] = ['aloe plant', 3]
answers[3] = ['steak medium while pregnant', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'why isn\'t 11')
quest.save!
answers[0] = ['a prime number', 1]
answers[1] = ['pronounced onety one', 2]
answers[2] = ['pronounced oneteen', 3]
answers[3] = ['pronounced onety one meme', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
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
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'why I always')
quest.save!
answers[0] = ['feel tired', 1]
answers[1] = ['feel sleepy', 2]
answers[2] = ['fart', 3]
answers[3] = ['feel cold', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'where to donate a')
quest.save!
answers[0] = ['mattress', 1]
answers[1] = ['car', 2]
answers[2] = ['couch', 3]
answers[3] = ['piano', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'when i jump i')
quest.save!
answers[0] = ['wet myself', 1]
answers[1] = ['can hear water', 2]
answers[2] = ['pee a little', 3]
answers[3] = ['hear water', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'why is my gold')
quest.save!
answers[0] = ['-fish turning black', 1]
answers[1] = ['-fish floating', 2]
answers[2] = ['-fish dying', 3]
answers[3] = ['-fish swimming sideways', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
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
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'what if google was')
quest.save!
answers[0] = ['a guy', 1]
answers[1] = ['a person', 2]
answers[2] = ['deleted', 3]
answers[3] = ['not there', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'how do i convert to')
quest.save!
answers[0] = ['islam', 1]
answers[1] = ['judaism', 2]
answers[2] = ['pdf', 3]
answers[3] = ['catholicism', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'how come a ')
quest.save!
answers[0] = ['bed has four legs but ony one foot', 1]
answers[1] = ['baby doesn\'t drown in the womb', 2]
answers[2] = ['snowman\'s never dressed for hanukkah', 3]
answers[3] = ['website won\'t load', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'help I\'m a p')
quest.save!
answers[0] = ['-risoner in the library', 1]
answers[1] = ['-risoner in a chinese bakery', 2]
answers[2] = ['-arent', 3]
answers[3] = ['-risoner in a toothpaste factory', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

puts "15 woop woop"



quest = Question.new(content: 'don\'t you hate it when a')
quest.save!
answers[0] = ['sentence doesn\'t end the way you think it octopus', 1]
answers[1] = ['llama named carl', 2]
answers[2] = ['chinchilla eats the universe', 3]
answers[3] = ['velociraptor throws', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'is it normal to')
quest.save!
answers[0] = ['cry everyday', 1]
answers[1] = ['have suicidal thoughts as a teenager', 2]
answers[2] = ['feel your heartbeat', 3]
answers[3] = ['be sexually attracted to numbers', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'my girlfriend')
quest.save!
answers[0] = ['is a gal', 1]
answers[1] = ['is alien', 2]
answers[2] = ['is a gumiho', 3]
answers[3] = ['is a big magnet', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'dinosaurs were')
quest.save!
answers[0] = ['made up by the cia to discourage time travel', 1]
answers[1] = ['birds', 2]
answers[2] = ['the dominant land animal of the mesozoic era', 3]
answers[3] = ['definitely cold blooded', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end

quest = Question.new(content: 'is it bad')
quest.save!
answers[0] = ['that i never made love', 1]
answers[1] = ['to crack your neck', 2]
answers[2] = ['to swallow gum', 3]
answers[3] = ['to crack your back', 4]

answers.each do |answer|
  ansi = Answer.new(rank: answer[1], content: answer[0], question_id: quest.id)
  ansi.save!
end
puts "20 Seeds - Questions done!"


###########
#         #
#  Users  #
#         #
###########
puts "Making users ... "

seed_users = ['Lassie',
              'Flipper',
              'Secretariat',
              'Billy',
              'Brownie',
              'Big_Bird',
              'Willy',
              'KingKong']

seed_users.each do |name|
  User.create!(email: "#{name}@partly.com",
               username: "#{name}",
               password: '111111')
end
puts 'Done with Users!'


####################
#                  #
#  Games / Rounds  #
#                  #
####################

puts 'Creating empty games for users...'

# Config options...
allowed_game_types = ['Try Out']
number_of_games = 15

# Prep...
all_users = User.all
questions = Qustion.sample(number_of_games)

p 'Creating empty games... '
number_of_games.times do
  seed_games << Game.create!(game_mode: allowed_game_types.sample,
                             user_id: all_users.sample)
end
puts '... done!'
p 'Creating rounds (with questions) for games...'

seed_games.each do |game|
  question = questions.pop
  answer = question.answers.sample
  duration = rand(95000) + 500 # ==> Random time from  .5 to 10 seconds,in ms
  user = all_users.sample
  Round.create!( game_id: game.id,
                 question_id: question.id,
                 answer_id: answer.id,
                 duration: duration)
end
puts '... done!'










