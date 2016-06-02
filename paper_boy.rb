class Paperboy
attr_reader :name, :quota, :experience, :side, :earnings


  def initialize(name, side)
    @name = name
    @quota = 0
    @experience = 0
    @side = side
    @earnings = 0
  end

  def report
    "I'm #{name}, I've delivered #{experience} papers and I've earned $#{earnings} so far!"
  end

  def update_quota
    @quota = (@experience / 2) + 50
  end

   def deliver(start_address, end_address)
      experience_updated = (end_address.to_i - start_address.to_i) / 2
      @experience += experience_updated
      @earnings += self.calc_earnings (experience_updated)
      self.update_quota
   end

  def calc_earnings(num_houses)
    if num_houses > @quota
      money = (num_houses - 50) * 0.5 + (50 * 0.25)
    elsif num_house < @quota
      money = (num_houses * 0.25) - 2
    else
      money = num_houses * 0.25
    end
      return money
    end
  end



tommy = Paperboy.new("tommy", "even" )

puts tommy.quota
puts tommy.deliver(100, 220)
puts tommy.report
