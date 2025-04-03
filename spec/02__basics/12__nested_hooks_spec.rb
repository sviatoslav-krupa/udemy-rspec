# Notes:
#   * The order:
#     1. before :suite
#     2. before :context
#     3. before :example
#     4. after  :example
#     5. after  :context
#     6. after  :suite

# Docs:
#   * https://rspec.info/features/3-12/rspec-core/hooks/before-and-after-hooks/

describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before context'
    end
  
    before(:example) do
      puts 'INNER Before example'
    end

    it 'does some more basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does subtraction as well' do
      expect(5 - 3).to eq(2)
    end
  end
end
# OUTPUT:
#
#   nested hooks
#   OUTER Before context
#   OUTER Before example
#     does basic math
#     with condition A
#   INNER Before context
#   OUTER Before example
#   INNER Before example
#     does some more basic math
#   OUTER Before example
#   INNER Before example
#     does subtraction as well
#
#   Finished in 0.00068 seconds (files took 0.0332 seconds to load)
#   3 examples, 0 failures
