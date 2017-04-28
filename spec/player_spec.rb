require 'player'

describe Player do
  subject(:alex) { Player.new('Alex') }
  subject(:adam) { Player.new('Adam') }

  describe '#name' do
    it 'returns the name' do
      expect(alex.name).to eq 'Alex'
    end
  end


  describe '#hit_points'
    it 'returns the hit points' do
      expect(alex.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end

  describe '#attack' do
    it 'damages the player' do
      expect(adam).to receive(:receive_damage)
      alex.attack(adam)
    end
  end

  describe '#receive_damage' do
    it 'reduce the player hit points' do
      expect { alex.receive_damage }.to change { alex.hit_points }.by(-10)
    end
  end

end
