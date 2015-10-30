require 'player'

describe Player do

subject(:duck) {Player.new('Duck')}
subject(:eagle) {Player.new('Eagle')}

  context '#player_name' do
    it 'returns player name' do
      expect(duck.player_name).to eq('Duck')
    end
  end

  context '#attack' do
    it 'reduces player hitpoints' do
      expect(eagle).to receive(:receive_damage)
      duck.attack(eagle)
    end
  end

  context '#receive_damage' do
    it 'damages player' do
      expect{duck.receive_damage}.to change{duck.points}.by(-1)
    end
  end
end
