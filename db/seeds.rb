# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



########################
#                      #
#  Database Cleaning   #
#                      #
########################

puts "Cleaning database..."
User.destroy_all
Question.destroy_all
puts "Database cleaned! "

########################
#                      #
#  'Manual' Questions  #
#                      #
########################

puts "Making default 'seeded from humor sites' questions... "

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
puts "20 Seeds - Done basic questions one!"


#########################
#                       #
#  'Dynamic' Questions  #
#                       #
#########################

puts 'Time to dynamically seed questions!'
puts 'Preparing required libaries...'
require 'nokogiri'
require 'open-uri'
# URL for getting the suggestions
autocomplete_url = 'https://www.google.com/complete/search?output=toolbar&q='
puts '...done!'

#------------------#
# Animal Questions #
#------------------#

used_questions = []

puts 'Making animal-themed questions now... '

# Animal Seed Data
animals = ['dog', 'cat', 'elephant', 'bear',
           'ostrich', 'alligator', 'crocodile',
            'horse', 'zebra', 'crab', 'lion', 'fish' ]
animals_plural = animals.map { |animal| animal.pluralize }
animal_plural_appends = ['are', 'do', 'vs', 'have']

# ----
# 10 times with with prepends...
# ----

animal_prepends = ['baby', 'cute', 'flying']
10.times do
  # Build new search query, create question, and save it.
  test_query = "#{animal_prepends.sample} #{animals.sample} "
  while used_questions.include?("#{test_query}")
    test_query = "#{question_words.sample} #{question_word_appends.sample} "
  end
  new_question = Question.new(content: "#{test_query}", category: "Animal")
  new_question.save!

  # get autocomplete results, parse them, and extract relevant data.
  suggestions = open("#{autocomplete_url}#{test_query}").read
  suggestions = Nokogiri::XML(suggestions)
  suggestions = suggestions.root.xpath("CompleteSuggestion")[1..4]
  suggestions = suggestions.map { |suggestion| suggestion.xpath('suggestion')[0]["data"] }

  # Create new answers with the extracted data, and save them too.
  suggestions.each_with_index do |suggestion, index|
    my_rank = index + 1
    suggestion = suggestion.delete_prefix(test_query)
    Answer.create!(rank: my_rank, content: suggestion,
                   question_id: new_question.id)
  end
end
puts "... completed 10 animal prepend questions..."

# ----
# 10 times, singular with w/ appends
# ----

animal_appends = ['with', 'vs', 'in', 'wearing']
10.times do
  # Build new search query, create question, and save it.
  test_query = "#{animals.sample} #{animal_appends.sample} "
  while used_questions.include?("#{test_query}")
    test_query = "#{question_words.sample} #{question_word_appends.sample} "
  end
  new_question = Question.new(content: "#{test_query}", category: "Animal")
  new_question.save!

  # get autocmplete results, parse them, and extract relevant data.
  suggestions = open("#{autocomplete_url}#{test_query}").read
  suggestions = Nokogiri::XML(suggestions)
  suggestions = suggestions.root.xpath("CompleteSuggestion")[1..4]
  suggestions = suggestions.map { |suggestion| suggestion.xpath('suggestion')[0]["data"] }

  # Create new answers with the extracted data, and save them too.
  suggestions.each_with_index do |suggestion, index|
    my_rank = index + 1
    suggestion = suggestion.delete_prefix(test_query)
    Answer.create!(rank: my_rank, content: suggestion,
                   question_id: new_question.id)
  end
end
puts "... completed 10 animals singular w/ append questions..."

# ----
# 10 times, plural w/ appends
# ----

animal_plural_appends = ['are', 'do', 'vs', 'have']
10.times do
  # Build new search query, create question, and save it.
  test_query = "#{animals_plural.sample} #{animal_plural_appends.sample} "
  while used_questions.include?("#{test_query}")
    test_query = "#{question_words.sample} #{question_word_appends.sample} "
  end
  new_question = Question.new(content: "#{test_query}", category: "Animal")
  new_question.save!

  # get autocmplete results, parse them, and extract relevant data.
  suggestions = open("#{autocomplete_url}#{test_query}").read
  suggestions = Nokogiri::XML(suggestions)
  suggestions = suggestions.root.xpath("CompleteSuggestion")[1..4]
  suggestions = suggestions.map { |suggestion| suggestion.xpath('suggestion')[0]["data"] }

  # Create new answers with the extracted data, and save them too.
  suggestions.each_with_index do |suggestion, index|
    my_rank = index + 1
    suggestion = suggestion.delete_prefix(test_query)
    Answer.create!(rank: my_rank, content: suggestion,
                   question_id: new_question.id)
  end
end
puts "... completed 10 animals plural w/ append questions..."
puts "done seeding animal questions!"


#--------------------------------#
# "General Knowledge"  Questions #
#--------------------------------#

# General Knowledge Seed Data
question_words = ['how', 'what', 'where', 'why', 'when', 'who']
question_word_appends = ['can', 'do', 'did', 'are', 'is', 'was',
                       'do we', 'did we', 'are you', 'was i']

15.times do
  # Build new search query, create question, and save it.
  test_query = "#{question_words.sample} #{question_word_appends.sample} "
  while used_questions.include?("#{test_query}")
    test_query = "#{question_words.sample} #{question_word_appends.sample} "
  end
  used_questions << test_query
  new_question = Question.new(content: "#{test_query}", category: "Open-Ended")
  new_question.save!

  # get autocmplete results, parse them, and extract relevant data.
  suggestions = open("#{autocomplete_url}#{test_query}").read
  suggestions = Nokogiri::XML(suggestions)
  suggestions = suggestions.root.xpath("CompleteSuggestion")[1..4]
  suggestions = suggestions.map { |suggestion| suggestion.xpath('suggestion')[0]["data"] }

  # Create new answers with the extracted data, and save them too.
  suggestions.each_with_index do |suggestion, index|
    my_rank = index + 1
    suggestion = suggestion.delete_prefix(test_query)
    Answer.create!(rank: my_rank, content: suggestion,
                   question_id: new_question.id)
  end
end
puts "... completed 15 general knowledge questions ..."
puts "Done with ALL questions!"
puts "#{Question.all.count} total questions!"
puts "#{Answer.all.count} total answers! Yay!"


# # Question Generation Loop
# test_query = "#{animals.sample} #{animal_appends.sample} "
# suggestions_xml = open("#{autocomplete_url}#{test_query}").read
# parsed_xml = Nokogiri::XML(suggestions_xml)
# complete_suggestions = parsed_xml.root.xpath("CompleteSuggestion")
# complete_suggestions.each do |c_suggest|
#   puts c_suggest.xpath('suggestion')[0]["data"]
# end

# p suggestions_xml
# p parsed_xml


###########
#         #
#  Users  #
#         #
###########


puts "Making users ... "

seed_users = ['tryout_guy',
              'Lassie',
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
questions = Question.all.sample(number_of_games)
seed_games = []

p 'Creating empty games... '
number_of_games.times do
  seed_games << Game.create!(game_mode: allowed_game_types.sample,
                             user_id: all_users.sample.id)
end
puts '... done!'
p 'Creating rounds for games, getting answers, and scoring them...'

seed_games.each do |game|
  question = questions.pop
  answer = question.answers.sample
  duration = rand(95000) + 500 # ==> Random time from  .5 to 10 seconds,in ms
  user = all_users.sample
  Round.create!( game_id: game.id,
                 question_id: question.id,
                 answer_id: answer.id,
                 duration: duration)
  game.score = answer.rank == 1 ? 1 : 0
end
puts '... done! Happy testing!'













