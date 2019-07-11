require 'player'

describe Player do
  subject(:player) { described_class.new }

  it 'returns the name of the player' do
    expect(player.name).to eq "Jimbo"
  end

end