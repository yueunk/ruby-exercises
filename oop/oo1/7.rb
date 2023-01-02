#Using the code from the previous exercise, add a getter method named #name and invoke it in place of @name in #greet.
class Cat
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  # def name # this is another option instead of using attr_reader :name
  #   @name
  # end
  
  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
p kitty.name

# by writing a getter method (manually or simply), you can invoke the getter method outside the class on the object instance