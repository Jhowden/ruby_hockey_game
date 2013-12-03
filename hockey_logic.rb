module Action

  def self.check(offensive_player, defensive_player)
    if defensive_player.check > offensive_player.balance
      defensive_player.puck << offensive_player.puck.pop
    end
  end

  def self.poke_check(offensive_player, defensive_player)
    if defensive_player.stick_check > offensive_player.puck_control
      defensive_player.puck << offensive_player.puck.pop
    end
  end

  def self.block_shot(offensive_player, defensive_player, goalie)
    probability = defensive_player.shot_block * 0.4
    if rand(100) < probability
      defensive_player.puck << offensive_player.puck.pop
    else
      self.goal?(offensive_player, goalie)
    end
  end

  def self.goal?(offensive_player, goalie)
    if offensive_player.shooting_power > goalie.reflexes
      offensive_player.puck.pop
      "goal"
    else
      goalie.puck << offensive_player.puck.pop
      "faceoff"
    end
  end

  def self.pass(offensive_player, offensive_player2)
    offensive_player2.puck << offensive_player.puck.pop
  end

  def self.deke(offensive_player)
    offensive_player
  end
end
