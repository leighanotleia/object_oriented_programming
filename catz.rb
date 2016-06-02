class Cat
  attr_accessor :name, :preferred_food, :meal_time

  def initialize( name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i
  end

  def eats_at
    if @meal_time < 13
      puts "#{meal_time} AM"
    else
      puts "#{@meal_time - 12 } PM"
    end
  end

  def meow
    "My name is #{name} and I eat #{preferred_food} at #{eats_at}"
  end
end

kairi = Cat.new("Kairi", "Tuna", "7")
oliver = Cat.new("Oliver", "Salmon", "20")

puts kairi.meow
puts oliver.meow
