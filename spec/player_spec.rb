require 'player'

describe Player do

  subject(:player) { described_class.new('Sam') }
  describe '#name' do
    it 'stores player\'s name' do
      expect(player.name).to eq 'Sam'
    end
    it 'stores a move which is defaulted to nil at instantiation' do
      expect(player.choice).to eq nil
    end
    it 'updates player\'s choice' do
      subject.update_choice('Rock')
      expect(subject.choice).to eq 'Rock'
    end
  end
  context 'return player choice' do
    it 'player choose Rock' do
      allow(player).to receive(:choice).and_return('Rock')
      expect(player.choice).to eq 'Rock'
    end

    it 'player choose paper' do
      allow(player).to receive(:choice).and_return('Paper')
      expect(player.choice).to eq 'Paper'
    end
    it 'player choose Scissors' do
      allow(player).to receive(:choice).and_return('Scissors')
      expect(player.choice).to eq 'Scissors'
    end
  end
end
