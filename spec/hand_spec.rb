require 'rspec'
require 'hand'
require 'byebug'

describe "Hand" do
  # let(:deck) { double("deck", :deck => []) }
  let(:straight_flush) { double("straight_flush", :cards => [[:heart, 14],[:heart, 13],[:heart, 12],[:heart, 11],[:heart, 10]]) }
  let(:four_of_a_kind) { double("four_of_a_kind", :cards => [[:heart, 14],[:diamond, 14],[:spade, 14],[:club, 14],[:heart, 10]]) }
  let(:full_house) { double("full_house", :cards => [[:heart, 14],[:diamond, 14],[:spade, 14],[:club, 10],[:heart, 10]]) }
  let(:flush) { double("flush", :cards => [[:heart, 14],[:heart, 8],[:heart, 7],[:heart, 2],[:heart, 4]]) }
  let(:straight) { double("straight", :cards => [[:heart, 10],[:club, 9],[:spade, 8],[:heart, 7],[:diamond, 6]]) }
  let(:three_of_a_kind) { double("three_of_a_kind", :cards => [[:heart, 14],[:diamond, 14],[:spade, 14],[:club, 7],[:heart, 10]]) }
  let(:pair) { double("pair", :cards => [[:heart, 14],[:club, 11],[:heart, 12],[:heart, 11],[:heart, 10]]) }
  # let(:straight_flush) { double("straight_flush")

  describe "#initialize" do
    subject(:hand) { Hand.new(straight_flush.cards) }

    it "initializes and new hand of card objects" do
      expect(hand.cards.length).to eq(5)
    end

    it "gives a hand rank" do
      expect(hand.rank).to_not eq(nil)
    end
  end

  describe "#rank" do
    subject(:hand) { Hand.new(straight_flush.cards) }
    it "returns a 9 for straight flush" do
      expect(hand.rank).to eq(9)
    end

    subject(:hand) { Hand.new(straight.cards) }
    it "returns a 5 for straight" do
      expect(hand.rank).to eq(5)
    end

    subject(:hand) { Hand.new(pair.cards) }
    it "returns a 2 for one pair" do
      expect(hand.rank).to eq(2)
    end
  end

  describe "Helper Methods" do
    subject(:hand) { Hand.new(four_of_a_kind.cards) }
    it "returns true for four of a kind" do
      expect(hand.four_of_a_kind).to eq(true)
    end

    subject(:hand) { Hand.new(flush.cards) }
    it "returns true for flush" do
      expect(hand.flush).to eq(true)
    end

    subject(:hand) { Hand.new(full_house.cards) }
    it "returns true for full house" do
      expect(hand.full_house).to eq(true)
    end

    subject(:hand) { Hand.new(three_of_a_kind.cards) }
    it "returns true for three of a kind" do
      expect(hand.three_of_a_kind).to eq(true)
    end

  end

end
