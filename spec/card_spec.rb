require 'rspec'
require 'card'


describe "Card" do
  subject(:card) { Card.new(:spade, 2) }
  let (:card2) { Card.new(:spade, 4) }
  
  describe "#initialize" do
    it "initializes a card suit" do
      expect(card.suit).to eq(:spade)
    end

    it "initializes a card value" do
      expect(card.value).to eq(2)
    end
  end

  describe "#rendered_card" do
    it "returns a rendered version of the card" do
      expect(card.rendered_card).to include("♤ 2")
    end
  end

  describe "#compare_card" do
    it "returns the higher value card" do
      expect(card.compare_card(card2)).to eq(card2)
    end
  end
end
