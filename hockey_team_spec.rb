require_relative 'nhl_team'

describe Team do
  it "returns a valid team" do
    center = double("center", name: "bobby")
    right_wing = double("right_wing", speed: 10)
    left_wing = double("left_wing", balance: 20)
    left_defensemen = double("left_defensemen", shot_block: 50)
    right_defensemen = double("right_defensemen", stick_check: 15)
    goalie = double("goalie", vision: 90)
    players = {center: center, right_wing: right_wing, left_wing: left_wing,
               left_defensemen: left_defensemen, right_defensemen: right_defensemen,
               goalie: goalie}

    team = Team.new("Blues", players)
    expect(team.team_name).to eq("Blues")
    expect(team.center.name).to eq("bobby")
    expect(team.right_wing.speed).to eq(10)
    expect(team.left_wing.balance).to eq(20)
    expect(team.left_defensemen.shot_block).to eq(50)
    expect(team.right_defensemen.stick_check).to eq(15)
    expect(team.goalie.vision).to eq(90)
  end

end
