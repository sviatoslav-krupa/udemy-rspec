# Notes:
#   * `have_attributes` checks for the presence of an attribute and its value in an object

class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Stone Cold Steve Austin', 'Stunner') do
    it 'checks for object attribute and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin')
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin') }
    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner') }
  end
end
# OUTPUT:
#
#   have_attributes matcher
#     #<ProfessionalWrestler:0x0000000101089100>
#       checks for object attribute and proper values
#       is expected to have attributes {:name => "Stone Cold Steve Austin"}
#       is expected to have attributes {:finishing_move => "Stunner", :name => "Stone Cold Steve Austin"}
#
#   Finished in 0.00259 seconds (files took 0.04824 seconds to load)
#   3 examples, 0 failures
