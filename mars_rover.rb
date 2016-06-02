class Rover
  attr_accessor :direction, :position

  def initialize(initial_direction, current_position=[0,0])
    @direction = initial_direction
    @position = current_position
  end

  def read_instruction
  end

  def turn_left
  end

  def turn_right
  end

  def move
  end

end
