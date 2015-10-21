require 'computer_player'

describe ComputerPlayer do
  subject(:computer_player) { described_class.new }

  it 'inherits from Player' do
    expect(described_class).to be < Player
  end

  describe '#computer?' do
    it 'returns true' do
      expect(computer_player.computer?).to be true
    end
  end

  context 'defaults' do
    it 'defaults to the name Computer' do
      expect(computer_player.name).to eq 'Computer'
    end
  end
end