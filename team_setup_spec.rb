require_relative 'team_setup'

describe TeamSetup do
  context '#initialize' do
  	it 'instantiates an empty array' do
  		setup = TeamSetup.new

  		expect(setup.players).to eq({})
  	end
  end
end