# Notes:
#   * `describe` can describe a class, not only a string
#   * Test should be deterministic, so the same test should always return the same result

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

# Or `describe Card`
describe 'Card' do
  it 'has a rank' do
    # `card` is a local variable, so it can't be used outside the block
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    # here, we have to create a new `card` variable
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end
end
# OUTPUT (without Card class defined):
#   FF
#
#   Failures:
#
#     1) Card has a rank
#   Failure/Error: card = Card.new('Ace', 'Spades')
#
#   NameError:
#     uninitialized constant Card
#   # ./spec/02__basics/04__multiple_examples_spec.rb:16:in 'block (2 levels) in <top (required)>'
#
#   2) Card has a suit
#   Failure/Error: card = Card.new('Ace', 'Spades')
#
#   NameError:
#     uninitialized constant Card
#   # ./spec/02__basics/04__multiple_examples_spec.rb:22:in 'block (2 levels) in <top (required)>'
#
#   Finished in 0.00112 seconds (files took 0.03228 seconds to load)
#   2 examples, 2 failures
#
#   Failed examples:
#
#   rspec ./spec/02__basics/04__multiple_examples_spec.rb:14 # Card has a rank
#   rspec ./spec/02__basics/04__multiple_examples_spec.rb:20 # Card has a suit

# OUTPUT (with Card class defined):
#
#   Card
#     has a rank
#     has a suit
#
#   Finished in 0.00063 seconds (files took 0.03372 seconds to load)
#   2 examples, 0 failures
