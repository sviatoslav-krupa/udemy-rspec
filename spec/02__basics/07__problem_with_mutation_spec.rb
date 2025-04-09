# Notes:
#   * Tests run in random order, not guaranteed to run in the order they are defined

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

describe Card do
  def card
    Card.new('Ace', 'Spades')
  end

  it 'has a rank and that rank can change' do
    # This is one instance of Card
    expect(card.rank).to eq('Ace')

    # This is another instance of Card
    card.rank = 'Queen'

    # This is one more instance of Card
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    # This is the fourth instance of Card
    expect(card.suit).to eq('Spades')
  end
end
# OUTPUT:
#   F.
#
#   Failures:
#
#     1) Card has a rank and that rank can change
#       Failure/Error: expect(card.rank).to eq('Queen')
#
#         expected: "Queen"
#              got: "Ace"
#
#         (compared using ==)
#     # ./spec/02__basics/07__problem_with_mutation_spec.rb:21:in 'block (2 levels) in <top (required)>'
#
#   Finished in 0.00772 seconds (files took 0.04433 seconds to load)
#   2 examples, 1 failure
#
#   Failed examples:
#
#   rspec ./spec/02__basics/07__problem_with_mutation_spec.rb:18 # Card has a rank and that rank can change
