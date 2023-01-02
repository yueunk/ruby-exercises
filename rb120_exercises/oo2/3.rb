#add a method named #identify that returns its calling object.
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def identify
    self
  end
end

kitty = Cat.new('Sophie')
p kitty.identify

# review regarding self
# 1. used to define a class method - self references the class
# 2. used to modify instance variable - self references the calling object

# review #p
# calling p is like calling puts with inspect invoked on the argument passed into the puts method

# review #puts
# calling puts is like calling puts with to_s invoked on the argument passed into the puts method, UNLESS the argument is an array