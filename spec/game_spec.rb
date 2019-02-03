require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double :player_1, name: 'Rebecca' }
  let(:player_2) { double :player_2, name: 'Computer' }
  let(:player_3) { double :player_3, name: 'Papaer' }

  describe '#player_1' do
    it 'retrives the first player' do
      expect(game.player_1).to eq player_1
    end
    it 'retrives the first player name' do
      expect(game.player_1.name).to eq 'Rebecca'
    end
  end

  describe '#player_2' do
    it 'retrives the second player' do
      expect(game.player_2).to eq player_2
    end
    it 'retrives the second player name' do
      expect(game.player_2.name).to eq 'Computer'
    end

    it 'Stores players moves' do
      allow(player_1).to receive(:choice).and_return("Rock")
      allow(player_2).to receive(:choice).and_return("Scissors")
      expect(game.player_1.choice).to eq "Rock"
      expect(game.player_2.choice).to eq "Scissors"
    end
  end

  context '#result' do
    # player wins
    it 'Rock beats Scissors' do
      allow(player_1).to receive(:choice).and_return("Rock")
      allow(player_2).to receive(:choice).and_return("Scissors")
      expect(game.result).to eq player_1
    end

    it 'Paper beats Rock' do
      allow(player_1).to receive(:choice).and_return("Paper")
      allow(player_2).to receive(:choice).and_return("Rock")
      expect(game.result).to eq player_1
    end
    it 'Scissors beats Paper' do
      allow(player_1).to receive(:choice).and_return("Scissors")
      allow(player_2).to receive(:choice).and_return("Paper")
      expect(game.result).to eq player_1
    end

    # player loses
    it 'Rock beaten by Paper' do
      allow(player_1).to receive(:choice).and_return("Rock")
      allow(player_2).to receive(:choice).and_return("Paper")
      expect(game.result).to eq player_2
    end
    it 'Scissors beaten by Rock' do
      allow(player_1).to receive(:choice).and_return("Scissors")
      allow(player_2).to receive(:choice).and_return("Rock")
      expect(game.result).to eq player_2
    end
    it 'Paper beaten by Scissors' do
      allow(player_1).to receive(:choice).and_return("Paper")
      allow(player_2).to receive(:choice).and_return("Scissors")
      expect(game.result).to eq player_2
    end

    # tie
    it 'tie' do
      allow(player_1).to receive(:choice).and_return("Rock")
      allow(player_2).to receive(:choice).and_return("Rock")
      expect(game.result).to eq :tie
    end
    it 'tie' do
      allow(player_1).to receive(:choice).and_return("Paper")
      allow(player_2).to receive(:choice).and_return("Paper")
      expect(game.result).to eq :tie
    end
    it 'tie' do
      allow(player_1).to receive(:choice).and_return("Scissors")
      allow(player_2).to receive(:choice).and_return("Scissors")
      expect(game.result).to eq :tie
    end
  end
end
