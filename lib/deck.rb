require_relative "card"

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    create_new_deck
  end

  def create_new_deck
    suits = [:spade, :club, :heart, :diamond]
    suits.each do |suit|
      (2..14).each do |value|
        @cards << Card.new(suit, value)
      end
    end
    @cards.shuffle
  end

  def deal
    hand = []
    5.times { hand << draw }
    hand
  end

  def draw
    @cards.pop
  end

end
