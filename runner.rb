require_relative 'hockey_game'
require_relative 'hockey_team'
require_relative 'hockey_player'
require_relative 'playerfactory'

players = {}

puts "Please create your team. You will create a center, two wingers, two defensemen, and a goalie."

puts "Please create the center:"
center = PlayerFactory.new(Center, 575)
players[:center] = center.distribute_points
puts "You have created a center named: #{players[:center].name}"
puts

puts "Please create the left wing"
left_wing = PlayerFactory.new(LeftWing, 400)
players[:left_wing] = left_wing.distribute_points
puts "You have created a left winger named: #{players[:left_wing].name}"
puts

puts "Please create the right wing"
right_wing = PlayerFactory.new(RightWing, 400)
players[:right_wing] = right_wing.distribute_points
puts "You have created a right winger named: #{players[:right_wing].name}"
puts

puts "Please create the left defensemen"
left_defensemen = PlayerFactory.new(LeftDefensemen, 400)
players[:left_defensemen] = left_defensemen.distribute_points
puts "You have created a left defensemen named: #{players[:left_defensemen].name}"
puts

puts "Please create the right defensemen"
right_defensemen = PlayerFactory.new(RightDefensemen, 400)
players[:right_defensemen] = right_defensemen.distribute_points
puts "You have created a right defensemen named: #{players[:right_defensemen].name}"
puts

puts "Please create the goalie"
goalie = PlayerFactory.new(Goalie, 125)
players[:goalie] = goalie.distribute_points
puts "You have created a goalie named: #{players[:goalie].name}"
puts

puts "What would you like to name your team?"
team_name = gets.chomp
team = Team.new(team_name, players)

puts team.inspect