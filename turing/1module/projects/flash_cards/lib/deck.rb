class Deck

  attr_reader  :cards
  def initialize(cards)
    @cards = cards
  end

  def cards_in_category(category)
    new_array = []
    @cards.each do |x|
      if x.category == category
      new_array << x
      end
    end
     new_array
  end

  def count
    @cards.count
  end

end
