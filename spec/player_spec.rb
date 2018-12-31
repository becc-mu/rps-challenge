require 'player'

describe Player do

  subject(:sam) { Player.new('Sam') }
  describe '#name' do
    it 'returns the name' do
      expect(sam.name).to eq 'Sam'
    end
    it 'returns default move to nil at instantiation' do
       expect(sam.move).to eq nil
     end
     it 'updates player\'s move' do
       subject.update_move('rock')
       expect(subject.move).to eq 'rock'
     end
  end




end
