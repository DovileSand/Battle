require 'player'

describe Player do

  it 'returns player name' do

    expect(Player.new(:p1).player_name).to eq :p1

  end

end
