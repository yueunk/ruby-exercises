# Using the code from the previous exercise, add a parameter to #initialize that provides a name for the Cat object. Use an instance variable to print a greeting with the provided name. (You can remove the code that displays I'm a cat!.)

class Cat
  def initialize(name) # parameter added to accept arguments upon initialization
    @name = name # initializing an instance variable
    puts "Hello! My name is #{@name}!"
  end
  
end

p kitty = Cat.new('Sophie')

# new info:
# instance variables only exist within an object instance; they are available to reference only once the object has been initialized (@instance_var)

# we accept one argument name, which we assign to @name; @name now available to reference anywhere inside the object