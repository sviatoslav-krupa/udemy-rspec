# Notes:
#   * `satisfy` matcher is used to test if a value satisfies a given condition
#   * It passes if the provided block returns true

# Docs:
#   * https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/satisfy/

describe 'satisfy matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse  }
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
    end
  end
end
# OUTPUT:
#
#   satisfy matcher
#     is a palindrome
#     can accept a custom error message
#
#   Finished in 0.00107 seconds (files took 0.04736 seconds to load)
#   2 examples, 0 failures
