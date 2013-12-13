module Action

  def self.check(offensive_player, defensive_player)
    if defensive_player.body_check > offensive_player.balance
      defensive_player.puck << offensive_player.puck.pop
    end
  end

  def self.poke_check(offensive_player, defensive_player)
    if defensive_player.stick_check > offensive_player.puck_control
      defensive_player.puck << offensive_player.puck.pop
    end
  end

  def self.block_shot(offensive_player, defensive_player, defensive_goalie, defensive_net)
    probability = defensive_player.shot_block * 0.4
    if rand(100) < probability
      defensive_player.puck << offensive_player.puck.pop
    else
      self.goal?(offensive_player, defensive_goalie, defensive_net)
    end
  end

  def self.goal?(offensive_player, defensive_goalie, defensive_net)
    if offensive_player.shooting_power > defensive_goalie.reflexes
      defensive_net.goal_net << offensive_player.puck.pop
      puts "goal"
    else
      defensive_goalie.puck << offensive_player.puck.pop
      puts "faceoff"
    end
  end

  def self.pass(offensive_player, offensive_player2)
    offensive_player2.puck << offensive_player.puck.pop
  end

  def self.deke(offensive_player)
    offensive_player
  end
end
