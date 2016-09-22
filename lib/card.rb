require 'colorize'
require 'byebug'

class Card
  attr_reader :suit, :value

  SUITS = {spade: "♤", diamond: "♢", club: "♧", heart: "♡"}
  VALUES = {
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    10 => "10",
    11 => "J",
    12 => "Q",
    13 => "K",
    14 => "A"
  }

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def rendered_card
    card = "#{SUITS[@suit]} #{VALUES[@value]}"
    if @suit == :spade || @suit == :club
      card.colorize(:background => :white)
    else
      card.colorize(:background => :white)
    end
  end

  def compare_card(other_card)
    self.value > other_card.value ? self : other_card
  end

end
