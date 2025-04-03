# Notes:
#   * Shared examples are used to define a set of tests that can be reused across multiple example groups
#   * We can include shared examples in our example groups using `include_examples` or `it_behaves_like`
#   * `include_examples` adds examples to the current example group (as a code snippet)
#   * `it_behaves_like` creates a nested context and adds examples inside it

shared_examples 'a Ruby object with three elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a Ruby object with three elements'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'a Ruby object with three elements'
end

RSpec.describe Hash do
  subject {{ a: 1, b: 2, c: 3 }}
  include_examples 'a Ruby object with three elements'
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  it_behaves_like 'a Ruby object with three elements'
end
# OUTPUT:
#
#   Array
#     returns the number of items
#
#   String
#     returns the number of items
#
#   Hash
#     returns the number of items
#
#   SausageLink
#     behaves like a Ruby object with three elements
#       returns the number of items
#
#   Finished in 0.00105 seconds (files took 0.04653 seconds to load)
#   4 examples, 0 failures
