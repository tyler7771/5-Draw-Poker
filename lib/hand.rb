class Hand
attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def rank
    return 9 if straight_flush
    return 8 if four_of_a_kind
    return 7 if full_house
    return 6 if flush
    return 5 if straight
    return 4 if asdg
    return 3 if three_of_a_kind
    return 2 if pair
  end

  def straight_flush
    true
  end

  def four_of_a_kind
    true
  end

  def full_house
    true
  end

  def flush
    true
  end

  def straight
    true
  end

  def three_of_a_kind
    true
  end

  def pair
    true
  end
end
