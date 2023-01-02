#Create a module named Transportation that contains three classes: Vehicle, Truck, and Car. Truck and Car should both inherit from Vehicle.

module Transportation
  class Vehicle
  end

  class Truck < Vehicle
  end
  
  class Car < Vehicle
  end
end

# modules are useful for namespacing, where similiar classes are grouped within a module; makes it easier to recognize the purpose of the contained classes and avoids collision with classes of the same name

# can instantiate a class in a module like this:
Transportation::Truck.new