require_relative 'lib/space_craft'

def main
  starting_point = [0,0,0]
  puts "Enter initial direction"
  initial_direction = gets.chomp
  commands = ["f", "r", "u", "b", "l"]
  app = SpaceCraft.new(starting_point, initial_direction, commands)
  app.run
  puts "Final position #{app.position}"
  puts "Final direction #{app.direction}"
end

main
