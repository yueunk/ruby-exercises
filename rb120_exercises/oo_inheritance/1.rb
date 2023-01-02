#create two classes - Truck and Car - that both inherit from Vehicle
class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
end

class Car < Vehicle
end

truck1 = Truck.new(1994)
puts truck1.year

car1 = Car.new(2006)
puts car1.year

# Truck and Car, both classes have a common behavior that describes the year the car was produced - they can inherit that behavior from their superclass Vehicle and invoke it