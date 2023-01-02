#Modify the following code so that Hello! I'm a cat! is printed when Cat.generic_greeting is invoked.

class Cat
  def self.generic_greeting # self references Cat
    "Hello! I'm a cat!"
  end
end


p Cat.generic_greeting

# ::generic_greeting can be invoked on the class it resides in