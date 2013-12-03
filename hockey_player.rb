class Player

  attr_accessor :name, :shooting_power, :puck_control, :body_check,
                :shot_block, :stick_check, :balance, :puck

  def initialize(player_bio)
    @name = player_bio[:name]
    @shooting_power = player_bio[:shooting_power]
    @puck_control = player_bio[:puck_control]
    @body_check = player_bio[:body_check]
    @shot_block = player_bio[:shot_block]
    @stick_check = player_bio[:stick_check]
    @balance = player_bio[:balance]
    @puck = []
  end

end

class Center < Player

  attr_accessor :faceoff

  def initialize(player_bio)
    super
    @faceoff = player_bio[:faceoff]
  end
end

class LeftWing < Player
end
 
class RightWing < Player
end

class LeftDefensemen < Player
end

class RightDefensemen < Player
end

class Goalie

  attr_accessor :name, :rebound_control, :puck, :reflexes

  def initialize(goalie_bio)
    @name = goalie_bio[:name]
    @reflexes = goalie_bio[:reflexes]
    @rebound_control = goalie_bio[:rebound_control]
    @puck = []
  end

end
