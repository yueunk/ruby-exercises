# multiply @age by 2 upon assignment, then multiply @age by 2 again when @age is returned by the getter method.
class Person
  def age=(age) #setter
    @age = age * 2
  end

  def age # getter
    @age * 2
  end
end

person1 = Person.new
person1.age = 20 #setting
puts person1.age#80 #getting

#alternative:
class Person
  def age=(age)
    @age = double(age)
  end
  
  def age
    double(@age)
  end
  
  private
  
  def double(value)
    value * 2
  end
end