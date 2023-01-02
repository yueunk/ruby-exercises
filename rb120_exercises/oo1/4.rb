#Using the code from the previous exercise, add an #initialize method that prints I'm a cat! when a new Cat object is initialized.

class Cat
  def initialize # useful for setting up an object
    puts "I'm a cat!"
  end
end

p kitty = Cat.new

# adding #initialize method lets us execute certain statements when a new Cat object is initialized