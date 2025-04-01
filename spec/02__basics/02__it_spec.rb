# Notes:
#   * `it` creates  a single example
#   * `it` takes a string that describes WHAT the example does or has, but not HOW it does it
#   * `it` can't be placed outside the `describe` block
#   * `specify` is an alias for `it`

# Docs:
#   * https://rspec.info/features/3-12/rspec-core/example-groups/basic-structure/

describe 'Card' do
  it 'has a type' do; end
  specify 'has a type' do; end
end
