require 'player'

describe Player do
  subject(:player) { described_class.new(name) }

  it 'returns the name of the player' do
    expect(Player.new("Jimbo").name).to eq "Jimbo"
  end

end