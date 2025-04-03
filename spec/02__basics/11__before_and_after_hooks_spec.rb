# Notes:
#   * `before` and `after` hooks are used to run code before or after each example
#   * `before(:context)` and `after(:context)` hooks are used to run code before or after the entire context in which the examples are defined
#   * `before(:suit)` and `after(:suit)` hooks are used to run code before or after the entire suite of examples

describe 'before and after hooks' do

  # Or `before(:all)`
  before(:context) do
    puts 'Before context'
  end

  # Or `after(:all)`
  after(:context) do
    puts 'After context'
  end

  # Or `before(:each)`, or just `before`
  before(:example) do
    puts 'Before example'
  end

  # Or `after(:each)`, or just `after`
  after(:example) do
    puts 'After example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(3 - 2).to eq(1)
  end
end
# OUTPUT:
#
#   before and after hooks
#   Before context
#   Before example
#   After example
#     is just a random example
#   Before example
#   After example
#     is just another random example
#   After context
#
#   Finished in 0.0006 seconds (files took 0.03308 seconds to load)
#   2 examples, 0 failures
