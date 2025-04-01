# Notes:
#   * Firstly, the test looks for `let` that defined in current scope
#   * Then, the test looks for `let` that defined in outer scope

class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }

    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end

# OUTPUT:
#   ..
#
#     Finished in 0.00773 seconds (files took 0.04678 seconds to load)
#   2 examples, 0 failures
