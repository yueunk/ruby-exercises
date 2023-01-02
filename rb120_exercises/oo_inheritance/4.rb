#modify #start_engine in Truck by appending 'Drive fast, please!' to the return value of #start_engine in Vehicle. The 'fast' in 'Drive fast, please!' should be the value of speed.
class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  attr_reader :speed
  
  def start_engine(speed)
    @speed = speed
    super() + " Drive #{speed}, please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast') #Ready to go! Drive fast, please!