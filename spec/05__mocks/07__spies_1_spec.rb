# Notes:
#   * Spies are a type of test double that allow you to verify that a method was called on an object
#   * Spies place the expectation after the action, when double places the expectation before the action
#   * Spies automatically track methods that have been called on them

# Docs:
#   * https://martinfowler.com/articles/mocksArentStubs.html
#   * https://revs.runtime-revolution.com/are-you-spying-on-me-a-quick-overview-of-spies-in-rspec-c5bc7669b897
#   * https://thoughtbot.com/blog/a-closer-look-at-test-spies#what39s-next

describe 'spies' do
  let(:animal) { spy('animal') }

  it 'confirms that a message has been received' do
    animal.eat_food
    expect(animal).to     have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
  end

  it 'resets between examples' do
    expect(animal).not_to have_received(:eat_food)
  end

  it 'retains the same functionality of a regular double' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('Sushi')
    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(2).times
    expect(animal).to have_received(:eat_food).with('Sushi')
    expect(animal).to have_received(:eat_food).once.with('Sushi')
  end
end
# OUTPUT:
#
#   spies
#     confirms that a message has been received
#     resets between examples
#     retains the same functionality of a regular double
#
#   Finished in 0.00133 seconds (files took 0.04694 seconds to load)
#   3 examples, 0 failures
