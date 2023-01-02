#determine the lookup path used when invoking cat1.color. Only list the classes that were checked by Ruby when searching for the #color method.

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color

# when a method is invoked, Ruby searches the method's class for the specified method. If no method is found, then Ruby inspects the class's superclass. The process is repeated until the method is found or there are no more classes.

