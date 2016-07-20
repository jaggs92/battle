require './lib/player.rb'

describe Player do
  subject(:gringo) { Player.new("Gringo") }

  describe '#name' do
    it 'returns the name' do
      expect(gringo.name).to eq 'Gringo'
    end


  end
end
