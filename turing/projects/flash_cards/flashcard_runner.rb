require './lib/card'
require './lib/turn'
require './lib/deck'
# require './lib/the_round'
require './lib/the_round2'
require 'pry'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5 clockwise from due north?", "North north west", :STEM)
deck = Deck.new([card_1, card_2, card_3])
round = Round.new(deck)
round.start










# p "Welcome! You're playing with 3 cards."
# p "This is card number 1 our of 3"
# p start.round.current_card.question
# guess = gets.chomp
# turn = Turn.new(guess, round.current_card)
# p turn.feedback
# start.round.take_turn(guess)


# p round.current_card.question
# guess = gets.chomp
# turn = Turn.new(guess, round.current_card)
# p turn.feedback
# round.take_turn(guess)
#
# p round.current_card.question
# guess = gets.chomp
# turn = Turn.new(guess, round.current_card)
# p turn.feedback
# round.take_turn(guess)
# p round.number_correct_by_category(:STEM)
#
#
# p "****** Game over! ******"
# p "You had #{round.percent_correct} correct guesses out of 3 for a total score of #{round.percent_correct}%."
# p "STEM - #{round.percent_correct_by_category(:STEM)}% correct"
# p "Geography - #{round.percent_correct_by_category(:Geography)}% correct"


# binding.pry

















#
