
class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{name}"
  end
end

class Student < Person
  def learn
   "I get it!"
  end
end

class Instructor < Person
  def teach
    "Everything in Ruby is an object."
  end
end



chris = Instructor.new("Chris")

christina = Student.new("Christina")

puts chris.greeting
puts christina.greeting
puts chris.teach
puts christina.learn


#student.teach => doesn't work because teach is a method defined only for the instructor
