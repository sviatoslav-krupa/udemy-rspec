# Notes:
#   * The order:
#     * before :suite
#     * before :context
#     * before :example
#     * after  :example
#     * after  :context
#     * after  :suite

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
#   OUTER Before context
#   OUTER Before example
#   .INNER Before context
#   OUTER Before example
#   INNER Before example
#   .OUTER Before example
#   INNER Before example
#   .
#
#   Finished in 0.0013 seconds (files took 0.03228 seconds to load)
#   3 examples, 0 failures
