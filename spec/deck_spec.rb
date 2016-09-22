require 'rspec'
require 'deck'


describe "Deck" do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "initializes a deck of 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
  end

  describe "#create_new_deck" do
    it "creates 52 card objects and puts them in deck array" do
      expect(deck.cards.first.is_a?(Card)).to eq(true)
    end
  end

  describe "#deal" do
    it "returns an array with 5 cards" do
      expect(deck.deal.length).to eq(5)
    end
  end

  describe "#draw" do
    it "returns 1 card" do
      deck.draw
      expect(deck.draw.is_a?(Card)).to eq(true)
    end

    it "should remove from the deck" do
      deck.draw
      expect(deck.cards.length).to eq(51)
    end
  end

end
