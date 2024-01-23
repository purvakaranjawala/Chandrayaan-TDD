require 'space_craft'

describe SpaceCraft do
  
  describe ".run" do
    context "for invalid input" do
      it "initial direction should be valid" do
        starting_point = [0,0,0]
        initial_direction = 'r'
        commands = ['f', 'r', 'b', 'l']
        app = SpaceCraft.new(starting_point, initial_direction, commands)
        expect(app.run).to raise(SystemExit)
      end

      it "command should be valid" do
        starting_point = [0,0,0]
        initial_direction = 'N'
        commands = ['p']
        expect(SpaceCraft.new(starting_point, initial_direction, commands).run).to eql('Not a valid command check again')
      end
    end

    context "for valid input" do
      it "initial direction should be valid" do
        starting_point = [0,0,0]
        initial_direction = 'N'
        commands = ['f', 'r', 'u', 'b', 'l']
        app = SpaceCraft.new(starting_point, initial_direction, commands)
        app.run
        expect(app.position).to eql [0,1,-1]
        expect(app.direction).to eql "N"
      end
    end
  end
end