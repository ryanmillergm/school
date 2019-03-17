class Round
  attr_reader :deck, :guess, :round, :turns, :correct, :incorrect

  def initialize(deck)
    @deck = deck
    @guess = guess
    @round = 0
    @turns = []
    @correct = []
    @incorrect = []

  end

#defines current card in deck
  def current_card
    @deck.cards[@round]
  end

#Method that creates a turn and moves to next card. Also, saves the
#correct and incorrect cards in their own arrays
  def take_turn(guess)
    guess.capitalize
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn
    if current_card.answer == guess.capitalize
      @correct << current_card
    else
      @incorrect << current_card
    end
    @round += 1
    new_turn
  end

#Method to call on correct number of cards
  def number_correct
    @correct.count
  end

#Method to find the number of correct answers by category
  def number_correct_by_category(category)
    new_array = []
    @correct.each do |x|
      if x.category == category
      new_array << x
      end
    end
     new_array.count
  end

#Method to find percent of questions answered correctly
  def percent_correct
    (@correct.count / @round.to_f) * 100
    # (@correct.count / @deck.count.to_f).round(2) * 100
  end

#Method to find the percentage of correct answers by category
  def percent_correct_by_category(category)
    correct_array = []
    @correct.map do |x|
      if x.category == category
      correct_array << x
      end
    end
    (correct_array.count.to_f / deck.cards_in_category(category).count).round(2) * 100
  end

  def start
    p "Welcome! You're playing with 3 cards."
    p "This is card number 1 our of 3"
    p current_card.question
    guess = gets.chomp
    turn = Turn.new(guess, current_card)
    p turn.feedback
    take_turn(guess)


    p current_card.question
    guess = gets.chomp
    turn = Turn.new(guess, current_card)
    p turn.feedback
    take_turn(guess)

    p current_card.question
    guess = gets.chomp
    turn = Turn.new(guess, current_card)
    p turn.feedback
    take_turn(guess)
    p number_correct_by_category(:STEM)

    p "****** Game over! ******"
    p "You had #{percent_correct} correct guesses out of 3 for a total score of #{percent_correct}%."
    p "STEM - #{percent_correct_by_category(:STEM)}% correct"
    p "Geography - #{percent_correct_by_category(:Geography)}% correct"

  end




  # def percent_correct_by_category(category)
  #   correct_array = []
  #   incorrect_array = []
  #   @correct.each do |x|
  #     if x.category
  #       correct_array << x
  #     end
  #   end
  #   @incorrect.each do |x|
  #     if x.category
  #       incorrect_array << x
  #     end
  #   end
  #   (correct_array.count / number_correct_by_category(category).to_f).round(2) * 100
  #   binding.pry
  # end

end

















#
