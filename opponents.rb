module Opponent
  SUNNY = Team.new("Sunny", {center: Center.new({name:"Mac", shooting_power:64, puck_control:64, body_check:64, shot_block:64, stick_check:64, balance:64, puck:[], faceoff:66}), 
													 left_wing: LeftWing.new({name:"Charlie", shooting_power:62, puck_control:63, body_check:62, shot_block:63, stick_check:62, balance:63, puck:[]}), 
													 right_wing: RightWing.new({name:"Dennis", shooting_power:63, puck_control:62, body_check:63, shot_block:62, stick_check:63, balance:62, puck:[]}), 
													 left_defensemen: LeftDefensemen.new({name:"Sweet Dee", shooting_power:62, puck_control:63, body_check:62, shot_block:63, stick_check:62, balance:63, puck:[]}), 
													 right_defensemen: RightDefensemen.new({name:"Frank", shooting_power:63, puck_control:62, body_check:63, shot_block:62, stick_check:63, balance:62, puck:[]}), 
													 goalie: Goalie.new({name:"The Waitress", reflexes:63, rebound_control:62, puck:[]})})

  TURTLES = Team.new("Turles", {center: Center.new({name:"Leonardo", shooting_power:75, puck_control:75, body_check:75, shot_block:75, stick_check:75, balance:75, puck:[], faceoff:70}), 
													 left_wing: LeftWing.new({name:"Michaelangelo", shooting_power:68, puck_control:70, body_check:68, shot_block:70, stick_check:68, balance:70, puck:[]}), 
													 right_wing: RightWing.new({name:"Dennis", shooting_power:70, puck_control:68, body_check:70, shot_block:68, stick_check:70, balance:68, puck:[]}), 
													 left_defensemen: LeftDefensemen.new({name:"Sweet Dee", shooting_power:68, puck_control:70, body_check:68, shot_block:70, stick_check:68, balance:70, puck:[]}), 
													 right_defensemen: RightDefensemen.new({name:"Frank", shooting_power:70, puck_control:68, body_check:70, shot_block:68, stick_check:70, balance:68, puck:[]}), 
													 goalie: Goalie.new({name:"The Waitress", reflexes:70, rebound_control:68, puck:[]})})
end