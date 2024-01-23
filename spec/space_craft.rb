require 'space_craft'

describe SpaceCraft do
  
  describe ".run" do
    context "initial direction should be valid" do
      it "returns " do
        starting_point = [0,0,0]
        initial_direction = 'r'
        commands = ['f', 'r', 'b', 'l']
        expect(SpaceCraft.new(starting_point, initial_direction, commands)).to eql('Not a valid direction')
      end
    end
  end
end