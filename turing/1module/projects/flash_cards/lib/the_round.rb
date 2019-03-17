class Round

  attr_reader :deck,
              :turns,
              :guess,
              :current_card,
              :round,
              :new_turn,
              :number_correct

  def initialize(deck)
    @deck = deck
    @turns = []
    @current_card = 0
    @round = 0
    @new_turn = []
    @number_correct = 0
  end

  def current_card
    @deck.cards[@round]
  end

  def take_turn(guess)
    @new_turn = Turn.new(guess, @round)
    @turns << @new_turn
    @round += 1
    @new_turn
   end

   def correct?
     round.new_turns[0].guess == round.deck.cards[round.round - 1]
   end
end

# pry(main)> new_turn.class
# #=> Turn
#
# pry(main)> new_turn.correct?
# #=> true
#
# pry(main)> round.turns
#=> [#<Turn:0x00007f99842f09e8 @card=#<Card:0x00007f800e29f0c9 @question=""What is the capital of Alaska?", @answer="Juneau", @category=:Geography>, @guess="Juneau">]

# pry(main)> round.number_correct
# #=> 1
#
# pry(main)> round.current_card
# #=> #<Card:0x00007fa160a62e90 @answer="Mars", @question="The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", @category=:STEM>
#
# pry(main)> round.take_turn("Venus")
# #=> #<Turn:0x00007f972a215b38...>
#
# pry(main)> round.turns.count
# #=> 2
#
# pry(main)> round.turns.last.feedback
# #=> "Incorrect."
#
# pry(main)> round.number_correct
# #=> 1
#
# pry(main)> round.number_correct_by_category(:Geography)
# #=> 1
#
# pry(main)> round.number_correct_by_category(:STEM)
# #=> 0
#
# pry(main)> round.percent_correct
# #=> 50.0
#
# pry(main)> round.percent_correct_by_category(:Geography)
# #=> 100.0
#
# pry(main)> round.current_card
# #=> #<Card:0x00007fa161a136f0 @answer="North north west", @question="Describe in words the exact direction that is 697.5° clockwise from due north?", @category=:STEM>

# The take_turn method is the crux of this problem.
# The take_turn method takes a string representing the guess.
# It should create a new Turn object with the appropriate
# guess and Card. It should store this new Turn, as well as
# return it from the take_turn method. Also, when the
# take_turn method is called, the Round should move on to
# the next card in the deck.



# pry(main)> new_turn.class
# #=> Turn
#
# pry(main)> new_turn.correct?
# #=> true
#
# pry(main)> round.turns
# #=> [#<Turn:0x00007f99842f09e8 @card=#<Card:0x00007f800e29f0c9 @question=""What is the capital of Alaska?", @answer="Juneau", @category=:Geography>, @guess="Juneau">]
