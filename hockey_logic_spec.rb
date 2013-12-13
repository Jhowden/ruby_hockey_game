require_relative 'hockey_logic'

describe Action do
  context "#check" do
    it 'returns an offensive player with no puck when checked' do
      offensive_player = double(balance: 50, puck: ["puck"])
      defensive_player = double(body_check: 60, puck: [])

      Action.check(offensive_player, defensive_player)
      expect(offensive_player.puck).to eq([])
      expect(defensive_player.puck).to eq(["puck"])
    end

    it 'returns an offensive player with a puck when checked' do
      offensive_player = double(balance: 70, puck: ["puck"])
      defensive_player = double(body_check: 60, puck: [])

      Action.check(offensive_player, defensive_player)
      expect(offensive_player.puck).to eq(["puck"])
      expect(defensive_player.puck).to eq([])
    end
  end

  context "#poke_check" do
    it 'returns an offensive_player with no puck when poke checked' do
      offensive_player = double(puck_control: 50, puck: ["puck"])
      defensive_player = double(stick_check: 60, puck: [])

      Action.poke_check(offensive_player, defensive_player)
      expect(offensive_player.puck).to eq([])
      expect(defensive_player.puck).to eq(["puck"])
    end

    it 'returns an offensive_player a puck when poke checked' do
      offensive_player = double(puck_control: 50, puck: ["puck"])
      defensive_player = double(stick_check: 50, puck: [])

      Action.poke_check(offensive_player, defensive_player)
      expect(offensive_player.puck).to eq(["puck"])
      expect(defensive_player.puck).to eq([])
    end
  end

  context "#block_shot" do
    it 'returns a block shot at least once out of 10 shots for a defender with perfect shot blocking' do
      offensive_player = double(puck: ["puck"], shooting_power: 70)
      defensive_player = double(shot_block: 100, puck: [])
      defensive_goalie = double(puck: [], reflexes: 65)
      defensive_net = double(goal_net: [])

      blocks = []
      10.times do 
        if Action.block_shot(offensive_player, defensive_player, defensive_goalie, defensive_net)
          blocks << Action.block_shot(offensive_player, defensive_player, defensive_goalie, defensive_net)
        end
      end

      expect(blocks.count).not_to eq(0)
    end

    it 'returns a goal when a shot is not blocked and an offensive player\'s shot power is greater than a goalie\'s reflexes' do
      offensive_player = double(puck: ["puck"], shooting_power: 70)
      defensive_player = double(shot_block: 0, puck: [])
      defensive_goalie = double(puck: [], reflexes: 65)
      defensive_net = double(goal_net: [])

      Action.block_shot(offensive_player, defensive_player, defensive_goalie, defensive_net)
      expect(offensive_player.puck).to eq([]) 
      expect(defensive_net.goal_net).to eq(["puck"])
    end

    it 'returns a faceoff when a shot is not blocked and an offensive player\'s shot power is less than a goalie\'s reflexes' do
      offensive_player = double(puck: ["puck"], shooting_power: 65)
      defensive_player = double(shot_block: 0, puck: [])
      defensive_goalie = double(puck: [], reflexes: 65)
      defensive_net = double(goal_net: [])

      Action.block_shot(offensive_player, defensive_player, defensive_goalie, defensive_net)
      expect(defensive_goalie.puck).to eq(["puck"])
      expect(offensive_player.puck).to eq([])
      expect(defensive_net.goal_net).to eq([])
    end
  end

  context "#goal" do
    it 'returns goal when an offensive player\'s shot power is greater than a goalie\'s reflexes' do
      offensive_player = double(puck: ["puck"], shooting_power: 70)
      defensive_goalie = double(puck: [], reflexes: 65)
      defensive_net = double(goal_net: [])

      Action.goal?(offensive_player, defensive_goalie, defensive_net)
      expect(offensive_player.puck).to eq([])
      expect(defensive_net.goal_net).to eq(["puck"])
    end

    it 'returns a faceoff when an offensive player\'s shot power is less than a goalie\'s reflexes' do
      offensive_player = double(puck: ["puck"], shooting_power: 60)
      defensive_goalie = double(puck: [], reflexes: 65)
      defensive_net = double(goal_net: [])

      Action.goal?(offensive_player, defensive_goalie, defensive_net)
      expect(defensive_goalie.puck).to eq(["puck"])
      expect(offensive_player.puck).to eq([])
      expect(defensive_net.goal_net).to eq([])
    end
  end

  context "#pass" do
    it 'passes the puck from one player to another' do
      offensive_player = double(puck: ["puck"])
      offensive_player2 = double(puck: [])

      Action.pass(offensive_player, offensive_player2)
      expect(offensive_player.puck).to eq([])   
      expect(offensive_player2.puck).to eq(["puck"])
    end
  end

  context "#deke" do
    it 'offensive_player continues with the puck' do
      offensive_player = double(puck: ["puck"])

      Action.deke(offensive_player)
      expect(offensive_player.puck).to eq(["puck"])
    end
  end

  # context "#shoot" do
  #   it 'returns a goal' do
  #     offensive_player = double(puck: ["puck"], shooting_power: 70)
  #     defensive_player = double(shot_block: 0, puck: [])
  #     goalie = double(puck: [], reflexes: 65)

  #     expect(Action.shoot(offensive_player, defensive_player, goalie)).to eq("goal")      
  #     expect(offensive_player.puck).to eq([])
  #   end
  # end

end
