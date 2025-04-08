# Notes:
#   * When we count method calls, the different expectations for one method is aggregated in one number
#     it 'expects an actor to call :light_on_fire 2 times' do
#       expect(stuntman).to receive(:light_on_fire).once
#       expect(stuntman).to receive(:light_on_fire).exactly(1).times
#       subject.start_shooting
#     end

# Docs:
#   * https://rspec.info/features/3-12/rspec-mocks/setting-constraints/receive-counts/

class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    # Pause for 3 seconds
    sleep(3)
    true
  end

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

describe Movie do
  let(:stuntman) { double("Mr. Danger", ready?: true, act: 'Any string at all', fall_off_ladder: 'Sure! Lets do it', light_on_fire: true)}
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      # Or `expect(stuntman).to receive(:light_on_fire).once`
      # Or `expect(stuntman).to receive(:light_on_fire).exactly(1).times`
      expect(stuntman).to receive(:light_on_fire).at_most(1).times

      # Or `expect(stuntman).to receive(:act).twice`
      # Or `expect(stuntman).to receive(:act).exactly(2).times`
      expect(stuntman).to receive(:act).at_least(2).times

      # Behaviour driven style - expectations are set before the action
      subject.start_shooting
    end
  end
end
# OUTPUT:
#
#   Movie
#     #start_shooting method
#       expects an actor to do 3 actions
#
#   Finished in 0.00374 seconds (files took 0.04996 seconds to load)
#   1 example, 0 failures
