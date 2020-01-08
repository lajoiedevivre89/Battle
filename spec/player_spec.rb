require 'player'

describe Player do
  subject(:vish) { Player.new('Vish') }
  
  describe '#name' do
    it 'returns the players name' do
    expect(vish.name).to eq 'Vish'
    end 
  end 

end 