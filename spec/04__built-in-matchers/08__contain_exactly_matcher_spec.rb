# Notes:
#   * `contain_exactly` checks for the presence of ALL elements in ANY order

# Syntax:
#   * `expect([x, y, z]).to contain_exactly(y, z, x)` (not `contain_exactly([y, z, x])`)
#   * `expect([x, y, z]).to match_array [y, z, x] `

# Docs:
#   * https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/contain-exactly/

describe 'contain_exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'should check for the presence of all elements' do
      expect([1, 2, 3]).to contain_exactly(1, 2, 3)
      expect([1, 2, 3]).to contain_exactly(3, 2, 1)
      expect([1, 2, 3]).to contain_exactly(2, 1, 3)

      expect([1, 2, 3]).to match_array [2, 1, 3]

      expect([1, 2, 3]).not_to contain_exactly(1, 2)
      expect([1, 2, 3]).not_to contain_exactly(1, 2, 3, 4)
    end
  end

  it { is_expected.to contain_exactly(1, 2, 3) }
  it { is_expected.to contain_exactly(3, 1, 2) }
  it { is_expected.to contain_exactly(2, 3, 1) }
end
# OUTPUT:
#
#   contain_exactly matcher
#     is expected to contain exactly 1, 2, and 3
#     is expected to contain exactly 3, 1, and 2
#     is expected to contain exactly 2, 3, and 1
#     long form syntax
#       should check for the presence of all elements
#
#   Finished in 0.00196 seconds (files took 0.03167 seconds to load)
#   4 examples, 0 failures
