# Notes:
#   * Helper methods are regular Ruby methods that can be used to DRY up the tests

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

describe Card do
  def card
    Card.new('Ace', 'Spades')
  end

  it 'has a rank' do
    # a brand-new instance of Card
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    # a brand-new instance of Card
    expect(card.suit).to eq('Spades')
  end
end
# OUTPUT:
#
#   Card
#     has a rank
#     has a suit
#
#   Finished in 0.00063 seconds (files took 0.03372 seconds to load)
#   2 examples, 0 failures
