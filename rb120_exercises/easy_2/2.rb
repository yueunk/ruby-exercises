module Drivable
  def drive
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
p bobs_car.drive

# if the method inside the module has self prepended, self references the module Drivable. the method will not be available at all as an instance method to objects