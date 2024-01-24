require_relative 'lib/space_craft'

def main
  puts 'Enter starting point coordinates x,y,z'
  starting_point = 3.times.map { gets.chomp.then { |l| Integer(l) rescue l } }
  
  puts 'Type in words f, r, u, b, l, d to give space craft command\n. When you\'re finished, press enter on an empty line'
  commands = []
  input = ' '
  while input != ''
    input = gets.chomp
    commands.push input
  end

  puts "Enter initial direction N, S, E, W, Up, Down"
  initial_direction = gets.chomp

  app = SpaceCraft.new(starting_point, initial_direction, commands.reject(&:empty?))
  puts "Final position #{app.position}"
  puts "Final direction #{app.direction}"
end

main
