# Notes:
#   * Shared context is used to share common setup code across multiple example groups
#   * We can include shared context in our example groups using `include_context`
#   * We can define hooks, instance variable, helper methods, and let variables in shared context

shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end

  it 'can reuse instance variables across different examples' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'second example in different file' do
  include_context 'common'

  it 'can use shared let variables' do
    expect(some_variable).to eq([1, 2, 3])
  end
end
# OUTPUT:
#
#   first example group
#     can use outside instance variables
#     can reuse instance variables across different examples
#     can use shared helper methods
#
#   second example in different file
#     can use shared let variables
#
#   Finished in 0.00069 seconds (files took 0.03224 seconds to load)
#   4 examples, 0 failures
