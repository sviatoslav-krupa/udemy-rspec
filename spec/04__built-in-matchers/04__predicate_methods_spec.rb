# Syntax:
#   * `method_name?` - `be_method_name`
#   * `has_method_name?` - `have_method_name`

# Docs:
#   * https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/predicates/

describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    expect(16 / 2).to be_even
    expect(15).to     be_odd
    expect(0).to      be_zero
    expect([]).to     be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end
# OUTPUT:
#
#   predicate methods and predicate matchers
#     can be tested with Ruby methods
#     can be tested with predicate matchers
#     0
#       is expected to be zero
#
#   Finished in 0.00194 seconds (files took 0.04983 seconds to load)
#   3 examples, 0 failures
