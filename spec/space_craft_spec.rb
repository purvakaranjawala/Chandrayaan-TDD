require 'space_craft'

describe SpaceCraft do
  
  describe ".run" do
    context "for invalid input" do
      it "initial direction not valid" do
        starting_point = [0,0,0]
        initial_direction = 'r'
        commands = ['f', 'r', 'b', 'l']
        begin
          SpaceCraft.new(starting_point, initial_direction, commands)
        rescue SystemExit => e
          expect(e.status).to eq 1
        end
      end

      it "command is not valid" do
        starting_point = [0,0,0]
        initial_direction = 'N'
        commands = ['p']
        begin
          SpaceCraft.new(starting_point, initial_direction, commands)
        rescue SystemExit => e
          expect(e.status).to eq 2
        end 
      end
    end

    context "for valid input" do 
      it "should return position and direction" do
        starting_point = [0,0,0]
        initial_direction = 'N'
        commands = ['f', 'r', 'u', 'b', 'l']
        app = SpaceCraft.new(starting_point, initial_direction, commands)
        expect(app.position).to eql [0,1,-1]
        expect(app.direction).to eql "N"
      end
    end
  end
end