class PlayerFactory

  CENTER_ATTRIBUTES = [:shooting_power, :puck_control, :body_check,
                       :shot_block, :stick_check, :balance, :faceoff]
  PLAYER_ATTRIBUTES = [:shooting_power, :puck_control, :body_check,
                       :shot_block, :stick_check, :balance]
  GOALIE_ATTRIBUTES = [:reflexes, :rebound_control]

  attr_reader :player_class, :player_attributes, :remaining_points

  def initialize(player_class, remaining_points)
    @player_class = player_class
    @player_attributes = {}
    @remaining_points = remaining_points
  end

  def distribute_points
    get_name

    case 
    when @player_class == Center
      CENTER_ATTRIBUTES.each_with_index do |attribute, index|
        puts "You have #{@remaining_points} points to distribute for #{CENTER_ATTRIBUTES.count - index} more categories."
        puts "Points must be less than 100 and cannot be a value greater than the remain points."
        puts "How many points for #{attribute}?"
        points = get_points
        @player_attributes[attribute] = points
        @remaining_points -= points
      end
    when @player_class == Goalie
      GOALIE_ATTRIBUTES.each_with_index do |attribute, index|
        puts "You have #{@remaining_points} points to distribute for #{GOALIE_ATTRIBUTES.count - index} more categories."
        puts "Points must be less than 100 and cannot be a value greater than the remain points."
        puts "How many points for #{attribute}?"
        points = get_points
        @player_attributes[attribute] = points
        @remaining_points -= points
      end
    else
      PLAYER_ATTRIBUTES.each_with_index do |attribute, index|
        puts "You have #{@remaining_points} points to distribute for #{PLAYER_ATTRIBUTES.count - index} more categories."
        puts "Points must be less than 100 and cannot be a value greater than the remain points."
        puts "How many points for #{attribute}?"
        points = get_points
        @player_attributes[attribute] = points
        @remaining_points -= points
      end
    end

    @player_class.new(@player_attributes)
  end

  def get_points
    points = nil
    while points.nil? || points > @remaining_points || points > 100
      points = gets.chomp.to_i
    end
    points
  end

  def get_name
    puts "What is the player's name?"
    name = gets.chomp
    @player_attributes[:name] = name
  end
end
