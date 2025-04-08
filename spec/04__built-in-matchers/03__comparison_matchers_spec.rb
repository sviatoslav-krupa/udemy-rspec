# Docs:
#   * https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/comparisons/

describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 5
    expect(8).to  be < 15

    expect(1).to be >= -1
    expect(1).to be >= 1

    expect(22).to be <= 100
    expect(22).to be <= 22
  end

  describe 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }
    it { is_expected.to be < 500 }
    it { is_expected.to be <= 100 }

    it { is_expected.not_to be > 105 }
  end
end
# OUTPUT:
#
#   comparison matchers
#     allows for comparison with built-in Ruby operators
#     100
#       is expected to be > 90
#       is expected to be >= 100
#       is expected to be < 500
#       is expected to be <= 100
#       is expected not to be > 105
#
#   Finished in 0.00164 seconds (files took 0.04755 seconds to load)
#   6 examples, 0 failures
