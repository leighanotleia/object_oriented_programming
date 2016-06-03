class Rover
  attr_accessor :plateau, :pos_x, :pos_y, :move_command, :direction

  def turn(turn_where)
      if turn_where == "L" && @direction == "N"
        @direction = "W"
      elsif turn_where == "L" && @direction == "E"
        @direction = "N"
      elsif turn_where == "L" && @direction == "S"
        @direction = "E"
      elsif turn_where == "L" && @direction == "W"
        @direction = "S"
      elsif turn_where == "R" && @direction == "N"
        @direction = "E"
      elsif turn_where == "R" && @direction == "E"
        @direction = "S"
      elsif turn_where == "R" && @direction == "S"
        @direction = "W"
      elsif turn_where == "R" && @direction == "W"
        @direction = "N"
      end
  end

  def move
    if @direction == "N"
      @pos_y += 1
    elsif @direction == "S"
      @pos_y -= 1
    elsif @direction == "E"
      @pos_x += 1
    elsif @direction == "W"
      @pos_x -= 1
    end
  end

  def plateau_size
    puts "What is the size of the plateau?"
    plateau = gets.chomp.split(" ").map {|x| x.to_i}
  end

  def start_positon
    puts "Current position:"
    positions = gets.chomp.split(" ")
    @pos_x = positions[0].to_i
    @pos_y = positions[1].to_i
    @direction = positions[2]
  end

  def moving
    puts "Where to you want to go?"
    instructions = gets.chomp.split("")
      instructions.each do |instruction|
      if instruction == "L" || instruction == "R"
        turn(instruction)
      elsif instruction == "M"
        move
      end
    end
  end

  def print_position
    puts "The rover is #{@pos_x}, #{@pos_y}, facing #{@direction}"
  end

end


rover1 = Rover.new
rover2 = Rover.new

rover1.plateau_size
rover1.start_positon
rover1.moving
rover1.print_position

rover2.plateau_size
rover2.start_positon
rover2.moving
rover2.print_position
