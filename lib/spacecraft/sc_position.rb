module SCPosition
  def move_forward
    case @direction
    when "N"
      @position[1] += 1
    when "S"
      @position[1] -= 1
    when "E"
      @position[0] += 1
    when "W"
      @position[0] -= 1
    when "Up"
      @position[2] += 1
    when "Down"
      @position[2] -= 1
    end
  end

  def move_backward
    case @direction
    when "N"
      @position[1] -= 1
    when "S"
      @position[1] += 1
    when "E"
      @position[0] -= 1
    when "W"
      @position[0] += 1
    when "Up"
      @position[2] -= 1
    when "Down"
      @position[2] += 1
    end
  end

  def turn_left
    directions = {
      "N" => "W",
      "S" => "E",
      "E" => "N",
      "W" => "S",
      "Up" => "N",
      "Down" => "S"
    }
    @direction = directions[@direction]
  end

  def turn_right
    directions = {
      "N" => "E",
      "S" => "W",
      "E" => "S",
      "W" => "N",
      "Up" => "S",
      "Down" => "N"
    }
    @direction = directions[@direction]
  end
  
  def turn_up
    directions = {
      "N" => "Up",
      "S" => "Down",
      "E" => "Up",
      "W" => "Down"
    }
    @direction = directions[@direction]
  end
  
  def turn_down
    directions = {
      "N" => "Down",
      "S" => "Up",
      "E" => "Down",
      "W" => "Up"
    }
    @direction = directions[@direction]
  end
end