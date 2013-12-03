require_relative 'playerfactory'

describe PlayerFactory do
  context '#initialize' do
    it "returns a new player factory object" do
      Center = double()
      player = PlayerFactory.new(Center, 100)

      expect(player.player_class).to eq(Center)
      expect(player.player_attributes).to eq({})
      expect(player.remaining_points).to eq(100)
    end
  end

  context '#get_points' do
    it 'returns a valid input value' do
      player = PlayerFactory.new(Center, 100)
      player.stub(:gets) {"50"}

      expect(player.get_points).to eq(50)
    end

    it 'rejects input values over 100' do
      player = PlayerFactory.new(Center, 200)
      player.should_receive(:gets).ordered.and_return("120")
      player.should_receive(:gets).ordered.and_return("99")

      expect(player.get_points).to eq(99)
    end

    it 'rejects input values that is greater than points' do
      player = PlayerFactory.new(Center, 50)
      player.should_receive(:gets).ordered.and_return("60")
      player.should_receive(:gets).ordered.and_return("50")

      expect(player.get_points).to eq(50)
    end
  end

  context '#get_name' do
    it 'allows a user can input a name' do
      player = PlayerFactory.new(Center, 50)
      player.stub(:gets) {"Bobby McGee\n"}

      expect(player.get_name).to eq("Bobby McGee")
    end
  end

  context '#distribute_points' do
    it 'creates a valid forward object' do
      player = PlayerFactory.new(Center, 675)
      Center.stub(:new).and_return({name: "Bobby McGee", shooting_power: 100, puck_control: 100, body_check: 100, shot_block: 100, stick_check: 100, balance: 100, faceoff: 75})

      player.should_receive(:gets).ordered.and_return("Bobby McGee\n")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("75")
      
      expect(player.distribute_points).to eq({name: "Bobby McGee", shooting_power: 100, puck_control: 100, body_check: 100, shot_block: 100, stick_check: 100, balance: 100, faceoff: 75})
    end

    it 'creates a valid goalie object' do
      Goalie = double()
      player = PlayerFactory.new(Goalie, 200)
      Goalie.stub(:new).and_return({name: "Bobby McGee", reflexes: 100, rebound_control: 100})

      player.should_receive(:gets).ordered.and_return("Bobby McGee\n")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")
      
      expect(player.distribute_points).to eq({name: "Bobby McGee", reflexes: 100, rebound_control: 100})
    end

    it 'creates a valid player object' do
      LeftWing = double()
      player = PlayerFactory.new(LeftWing, 600)
      LeftWing.stub(:new).and_return({name: "Bobby McGee", shooting_power: 100, puck_control: 100, body_check: 100, shot_block: 100, stick_check: 100, balance: 100})

      player.should_receive(:gets).ordered.and_return("Bobby McGee\n")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")
      player.should_receive(:gets).ordered.and_return("100")

      expect(player.distribute_points).to eq({name: "Bobby McGee", shooting_power: 100, puck_control: 100, body_check: 100, shot_block: 100, stick_check: 100, balance: 100})
    end
  end
end
