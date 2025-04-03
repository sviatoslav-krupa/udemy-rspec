# Notes:
#   * We can write `describe` block inside another `describe` block
#   * `context` is an alias for `describe`
#   * `context` is used to group tests that share a common condition

describe '#even? method' do
  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end
# OUTPUT:
#
#   even? method
#     with even number
#       should return true
#     with odd number
#       should return false
#
#   Finished in 0.00068 seconds (files took 0.03311 seconds to load)
#   2 examples, 0 failures
