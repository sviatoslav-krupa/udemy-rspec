# Syntax:
#   * `.all?(&:method_name?)` - `all(be_method_name)`
#   * `.all? { |item| condition }` - `all(condition)`

# Docs:
#   * https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/all/

describe 'all matcher' do
  it 'allows for aggregate checks' do
    [5, 7, 9].each do |val|
      expect(val).to be_odd
    end

    expect([5, 7, 9, 13]).to  all(be_odd)
    expect([4, 6, 8, 10]).to  all(be_even)
    expect([[], [], []]).to   all(be_empty)
    expect([0, 0]).to         all(be_zero)
    expect([5, 7, 9]).to      all(be < 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 10) }
  end
end
# OUTPUT:
#
#   all matcher
#     allows for aggregate checks
#     [5, 7, 9]
#       is expected to all be odd
#       is expected to all be < 10
#
#   Finished in 0.00205 seconds (files took 0.04935 seconds to load)
#   3 examples, 0 failures
