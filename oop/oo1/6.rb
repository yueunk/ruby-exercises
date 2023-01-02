#Using the code from the previous exercise, move the greeting from the #initialize method to an instance method named #greet that prints a greeting when invoked.
class Cat
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
p kitty.greet

# instance method same as any other method, except only available to invoke on an instance of this class