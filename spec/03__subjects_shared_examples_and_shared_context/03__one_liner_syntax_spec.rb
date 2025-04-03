# Docs:
#   * https://rspec.info/features/3-12/rspec-core/subject/one-liner-syntax/

describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner syntax' do
    it { is_expected.to eq(5) }
  end
end
# OUTPUT:
#
#   shorthand syntax
#     with classic syntax
#       should equal 5
#     with one-liner syntax
#       is expected to eq 5
#
#   Finished in 0.00065 seconds (files took 0.0328 seconds to load)
#   2 examples, 0 failures
