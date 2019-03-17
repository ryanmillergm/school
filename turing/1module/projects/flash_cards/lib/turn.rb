class Turn 

  attr_reader :guess, :card
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    @guess.capitalize == card.answer
  end

  def feedback
    if correct?
      "Correct!"
    else
    "Incorrect."
    end
  end


end



# Create a Turn class and an accompanying test file with the following methods:
#
# initialize(string, card) - A turn is initialized with two arguments. The
# first is a string representing a guess to a card’s question. The second
# argument is a Card object representing the current flashcard being shown.
# guess - This method returns the guess
# card - This method returns the Card
# correct? - This method returns a boolean indicating if the guess matched
# the answer on the Card.
# feedback - This method either returns "Correct!" or "Incorrect." based on
# whether the guess was correct or not.
# The Turn class should respond to the following interaction pattern:
