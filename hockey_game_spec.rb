require_relative 'hockey_game'

describe Game do

  context "#initialize" do
    it 'initializes a home team and away team and two nets' do
      team1 = double()
      team2 = double()

      game = Game.new(team1, team2)

      expect(game.home_team).to eq(team1)
      expect(game.away_team).to eq(team2)
      expect(game.home_net).to eq([])
      expect(game.away_net).to eq([])
    end
  end

end
