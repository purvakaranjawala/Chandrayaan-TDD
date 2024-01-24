require 'pry'
require_relative 'spacecraft/sc_position'

class SpaceCraft
  attr_accessor :position, :direction
  DIRECTIONS = ["N", "S", "E", "W", "Up", "Down"]
  COMMAND = ['f', 'b', 'l', 'r', 'u', 'd']

  include SCPosition

  def initialize(starting_point, initial_direction, commands)
    @position = starting_point
    initialize_direction(initial_direction)
    @commands = commands
    run
  end

  def run
    @commands.each do |command|
      check_command(command)
      case command.downcase
      when 'f'
        move_forward
      when 'b'
        move_backward
      when 'l'
        turn_left
      when 'r'
        turn_right
      when 'u'
        turn_up
      when 'd'
        turn_down
      end
    end
  end

  private

  def initialize_direction(initial_direction)
    if DIRECTIONS.include? initial_direction
      @direction = initial_direction
    else
      puts 'Not a valid direction'
      exit(1)
    end
  end

  def check_command(command)
    return if COMMAND.include? command
    puts 'Not a valid command check again'
    exit(2)
  end
end