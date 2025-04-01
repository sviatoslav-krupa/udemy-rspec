# Notes:
#   * hook - a method that runs at a specific time in the test lifecycle
#   * `before` hook runs before each test in the group
#   * `before` hook is used to set up the context for each test
#   * Instance variables are used to share data between the `before` hook and the tests
#   * Instance variables equal to `nil` by default and don't raise any errors

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

describe Card do

  # Or `before(:each)`, or `before(:example)`
  before do
    # if `card` will be just a local variable, it will not persist after the `before` block execution
    @card = Card.new('Ace', 'Spades')
  end

  it 'has a rank' do
    # in case if `card` is a local variable:
    # `NameError: undefined local variable or method 'card' for #<RSpec::ExampleGroups::Card:0x000000011dd91480>`

    # This is a new instance variable
    expect(@card.rank).to eq('Ace')
  end

  it 'has a suit' do
    # in case if `card` is a local variable:
    # `NameError: undefined local variable or method 'card' for #<RSpec::ExampleGroups::Card:0x000000011dd91480>`

    # This is again a new instance variable
    expect(@card.suit).to eq('Spades')
  end
end

# OUTPUT:
#   ..
#
#   Finished in 0.00224 seconds (files took 0.04425 seconds to load)
#   2 examples, 0 failures
