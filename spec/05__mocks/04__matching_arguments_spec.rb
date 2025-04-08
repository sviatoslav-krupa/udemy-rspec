# Notes:
#   * `with` specifies the arguments that the method should be called with

# Docs:
#   * https://rspec.info/features/3-12/rspec-mocks/setting-constraints/matching-arguments/

describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    three_element_array = double

    allow(three_element_array).to receive(:first).with(no_args).and_return(1)
    allow(three_element_array).to receive(:first).with(1).and_return([1])
    allow(three_element_array).to receive(:first).with(2).and_return([1, 2])
    allow(three_element_array).to receive(:first).with(be >= 3).and_return([1, 2, 3])

    expect(three_element_array.first).to      eq(1)
    expect(three_element_array.first(1)).to   eq([1])
    expect(three_element_array.first(2)).to   eq([1, 2])
    expect(three_element_array.first(3)).to   eq([1, 2, 3])
    expect(three_element_array.first(100)).to eq([1, 2, 3])
  end
end
# OUTPUT:
#
#   matching arguments
#     can return different values depending on the argument
#
#   Finished in 0.00404 seconds (files took 0.04711 seconds to load)
#   1 example, 0 failures
