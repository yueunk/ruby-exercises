class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    self.mileage = total # prepend self. to access the setter method or refer to the instance variable directly by using @mileage
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
p car.print_mileage  # should print 5678

# by using the instance variable directly, you bypass all the steps that are specific to the setter method; it's safe to use the explicit self