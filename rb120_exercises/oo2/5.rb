#create a class named Cat that tracks the number of times a new Cat object is instantiated. The total number of Cat instances should be printed when ::total is invoked.
class Cat
  @@num_cat = 0 # class var

  def initialize
    @@num_cat += 1
  end
  
  def self.total
    @@num_cat
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

p Cat.total

# review:
# adding #initialize method lets us execute certain statements when a new Cat object is initialized