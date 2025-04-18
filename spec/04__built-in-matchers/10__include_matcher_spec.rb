# Notes:
#   * `include` checks for substring inclusion, array inclusion, or hash key or key-value pair inclusion

describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    it { is_expected.to include('choc') }
  end

  describe [10, 20, 30] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(30, 20)
    end

    it { is_expected.to include(20, 30, 10) }
  end

  describe({ a: 2, b: 4 }) do
    it 'can check for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b, :a)
    end

    it 'can check for key-value pair' do
      expect(subject).to include(a: 2)
    end

    it { is_expected.to include(:b) }
    it { is_expected.to include(b: 4) }
  end
end
# OUTPUT:
#
#   include matcher
#     hot chocolate
#       checks for substring inclusion
#       is expected to include "choc"
#     [10, 20, 30]
#       checks for inclusion in the array, regardless of order
#       is expected to include 20, 30, and 10
#     {a: 2, b: 4}
#       can check for key existence
#       can check for key-value pair
#       is expected to include :b
#       is expected to include {b: 4}
#
#   Finished in 0.00315 seconds (files took 0.03225 seconds to load)
#   8 examples, 0 failures
