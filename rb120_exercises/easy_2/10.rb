module Walkable
  def walk
    puts "#{name} #{gait} forward"
  end
end

class Person
  include Walkable
  
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Noble < Person
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
    self.name = title + " " + name
  end
  
  def gait
    "struts"
  end
end

class Cat
  include Walkable
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

# mike = Person.new("Mike")
# mike.walk
# # => "Mike strolls forward"

# kitty = Cat.new("Kitty")
# kitty.walk
# # => "Kitty saunters forward"

# flash = Cheetah.new("Flash")
# flash.walk
# # => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"

#LS answer is different. must review.
=begin
Before we can do anything, we must first decide how we are going to approach this problem. As suggested in the Approach/Algorithm section, the easiest approach involves providing a method that returns the name and title for Nobles, and just the name for regular Persons, Cats, and Cheetahs. A reasonable way to do this is to define an appropriate #to_s method for all 4 classes, and then change Walkable#walk so it calls #to_s on the object.

So, this is exactly what we do. We define #to_s in all 4 classes, returning just the name in 3 classes, and returning both the title and name in the Noble class. Finally, we tell Walkable#walk to use #to_s to obtain the person's name (or name and title).

Wait just one minute. How are we doing that? There's no mention of #to_s in Walkable#walk, is there? Actually, there is - it's just hidden. When you perform interpolation on some value in a string, ruby automatically calls #to_s for you. So, #{self} in the string is actually #{self.to_s} in disguise. In the case of a Cat object, this calls Cat#to_s, but in the case of a Noble, it calls Noble#to_s.
=end