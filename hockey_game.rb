class Game

  attr_reader :home_team, :away_team
  attr_accessor :home_net, :away_net

  def initialize(home_team, away_team)
    @home_team = home_team
    @away_team = away_team
    @home_net = []
    @away_net = []
  end
end
