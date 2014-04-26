class Team

  attr_reader :team_name, :center, :left_wing, :right_wing,
              :right_defensemen, :left_defensemen, :goalie, :goal_net

  def initialize(team_name, players)
    @team_name = team_name
    @center = players[:center]
    @left_wing = players[:left_wing]
    @right_wing = players[:right_wing]
    @left_defensemen = players[:left_defensemen]
    @right_defensemen = players[:right_defensemen]
    @goalie = players[:goalie]
    @goal_net = []
  end
end
