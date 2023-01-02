#Change the following code so that creating a new Truck automatically invokes #start_engine.

class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def initialize(year) # changed the method name to match the method in the superclass to override
    super # despite overridden, still can access superclass's functionality; what's exactly happening here is Ruby looks in the inheritance hierarchy for a METHOD WITH THE SAME NAME.
    start_engine
  end
  
  def start_engine
    puts 'Ready to go!'
  end
end

truck1 = Truck.new(1994)
puts truck1.year


# in order to invoke #start_engine, it has to be called on the object at the moment. what can we do to automatically invoke it at the instantiation of the object?

# when you invoke #super within a method, Ruby looks in the inheritance hierarchy for a method with the same name. we use #super to invoke Vehicle#initialize, then we invoke #start_engine. Invoking #super without parentheses passess all arguments to Vehicle#initialize.