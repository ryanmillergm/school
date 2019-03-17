require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
# require './lib/the_round'
require './lib/the_round2'
require 'pry'

class RoundTest < Minitest::Test

  def tests_exists
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_card_1
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    assert Card, card_1
  end

  def test_card_2
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    assert Card, card_2
  end

  def test_deck_cards
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5 clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

  def test_deck_round
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5 clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    assert_equal deck,round.deck
  end

  def test_round_turns
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5 clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    assert_equal [], round.turns
    round.turns
  end

  def test_round_current_card
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5 clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    round.turns
    assert_equal card_1, round.current_card
  end


#Need to come back to this!!
  def test_round_take_turn
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5 clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_equal 0, round.round
    assert_equal Turn, round.take_turn("Juneau").class
    assert_equal 1, round.round
    assert_equal 1, round.number_correct
  end



#   def test_new_turn
#     card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
#     card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
#     card_3 = Card.new("Describe in words the exact direction that is 697.5 clockwise from due north?", "North north west", :STEM)
#     deck = Deck.new([card_1, card_2, card_3])
#     round = Round.new(deck)
#     round.take_turn("Juneau").class
#     assert_equal true, new_turn.correct?
#   end

  def test_round_turns2
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5 clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_equal 0, round.round
    assert_equal Turn, round.take_turn("Juneau").class
    assert_equal 1, round.round
    assert_equal Turn, round.take_turn("Venus").class
    assert_equal 2, round.round

    assert_equal 2, round.turns.count
    assert_equal "Incorrect.", round.turns.last.feedback
    assert_equal 1, round.number_correct
    assert_equal 1, round.number_correct_by_category(:Geography)
    assert_equal 0, round.number_correct_by_category(:STEM)
    assert_equal card_3, round.current_card
    assert_equal 50.0, round.percent_correct

    assert_equal 100, round.percent_correct_by_category(:Geography)
  end

  def test_percent_currect
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5 clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    assert_equal 0, round.round
    assert_equal Turn, round.take_turn("Juneau").class
    assert_equal 1, round.round
    assert_equal Turn, round.take_turn("Mars").class
    assert_equal 2, round.round
    round.take_turn("I don't know").class
    assert_equal 3, round.round
    assert_equal 50, round.percent_correct_by_category(:STEM)
    assert_equal 100, round.percent_correct_by_category(:Geography)

  end

end
