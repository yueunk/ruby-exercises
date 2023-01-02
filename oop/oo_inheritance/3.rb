#allow Truck to accept a second argument upon instantiation. Name the parameter bed_type and implement the modification so that Car continues to only accept one argument.
class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  attr_reader :bed_type # needed for it to be accessible (to be read)

  def initialize(year, bed_type) # overriding the superclass initiailize method
    super(year) # only sending up one argument
    @bed_type = bed_type # extending the functionality
  end
end

class Car < Vehicle
end

truck1 = Truck.new(1994, 'Short')
puts truck1.year # 1994
puts truck1.bed_type # Short