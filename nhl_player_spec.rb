require_relative 'nhl_players'

describe Center do
  it 'returns a center\'s name and attributes' do
    player_bio = {name: "Henry McGee", shooting_power: 30, puck_control: 40,
                  body_check: 50, shot_block: 60, stick_check: 70, balance: 80,
                  faceoff: 100}
    center = Center.new(player_bio)

    expect(center.name).to eq("Henry McGee")
    expect(center.shooting_power).to eq(30)
    expect(center.puck_control).to eq(40)
    expect(center.body_check).to eq(50)
    expect(center.shot_block).to eq(60)
    expect(center.stick_check).to eq(70)
    expect(center.balance).to eq(80)
    expect(center.faceoff).to eq(100)
    expect(center.puck).to eq([])
  end
end

describe LeftWing do
  it 'returns a left winger\'s name and attributes' do
    player_bio = {name: "Timmy McGee", shooting_power: 30, puck_control: 40,
                  body_check: 50, shot_block: 60, stick_check: 70, balance: 80}
    left_wing = LeftWing.new(player_bio)

    expect(left_wing.name).to eq("Timmy McGee")
    expect(left_wing.shooting_power).to eq(30)
    expect(left_wing.puck_control).to eq(40)
    expect(left_wing.body_check).to eq(50)
    expect(left_wing.shot_block).to eq(60)
    expect(left_wing.stick_check).to eq(70)
    expect(left_wing.balance).to eq(80)
    expect(left_wing.puck).to eq([])
  end
end

describe RightWing do
  it 'returns a left winger\'s name and attributes' do
    player_bio = {name: "Jimmy McGee", shooting_power: 30, puck_control: 40,
                  body_check: 50, shot_block: 60, stick_check: 70, balance: 80}
    right_wing = RightWing.new(player_bio)

    expect(right_wing.name).to eq("Jimmy McGee")
    expect(right_wing.shooting_power).to eq(30)
    expect(right_wing.puck_control).to eq(40)
    expect(right_wing.body_check).to eq(50)
    expect(right_wing.shot_block).to eq(60)
    expect(right_wing.stick_check).to eq(70)
    expect(right_wing.balance).to eq(80)
    expect(right_wing.puck).to eq([])
  end
end

describe LeftDefensemen do
  it 'returns a left defensemen\'s name and attributes' do
    player_bio = {name: "Mikey McGee", shooting_power: 30, puck_control: 40,
                  body_check: 50, shot_block: 60, stick_check: 70, balance: 80}
    left_defensemen = LeftDefensemen.new(player_bio)

    expect(left_defensemen.name).to eq("Mikey McGee")
    expect(left_defensemen.shooting_power).to eq(30)
    expect(left_defensemen.puck_control).to eq(40)
    expect(left_defensemen.body_check).to eq(50)
    expect(left_defensemen.shot_block).to eq(60)
    expect(left_defensemen.stick_check).to eq(70)
    expect(left_defensemen.balance).to eq(80)
    expect(left_defensemen.puck).to eq([])
  end
end

describe RightDefensemen do
  it 'returns a right defensemen\'s name and attributes' do
    player_bio = {name: "Stevey McGee", shooting_power: 30, puck_control: 40,
                  body_check: 50, shot_block: 60, stick_check: 70, balance: 80}
    right_defensemen = RightDefensemen.new(player_bio)

    expect(right_defensemen.name).to eq("Stevey McGee")
    expect(right_defensemen.shooting_power).to eq(30)
    expect(right_defensemen.puck_control).to eq(40)
    expect(right_defensemen.body_check).to eq(50)
    expect(right_defensemen.shot_block).to eq(60)
    expect(right_defensemen.stick_check).to eq(70)
    expect(right_defensemen.balance).to eq(80)
    expect(right_defensemen.puck).to eq([])
  end
end

describe Goalie do

 it 'returns a goalie\'s name and attributes' do
  goalie_bio = {name: "Matt McGee", reflexes: 60, rebound_control: 70}
  goalie = Goalie.new(goalie_bio)

    expect(goalie.name).to eq("Matt McGee")
    expect(goalie.reflexes).to eq(60)
    expect(goalie.rebound_control).to eq(70)
    expect(goalie.puck).to eq([])
 end

end
