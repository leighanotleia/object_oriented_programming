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

  def print_position
    puts "The rover is #{@pos_x}, #{@pos_y}, facing #{@direction}"
  end

end


rover = Rover.new

puts "What is the size of the plateau?"
rover.plateau = gets.chomp.split(" ").map {|x| x.to_i}

puts "Current position:"
positions = gets.chomp.split(" ")
rover.pos_x = positions[0].to_i
rover.pos_y = positions[1].to_i
rover.direction = positions[2]
rover.print_position
rover.move
rover.print_position
rover.turn("L")
rover.print_position
