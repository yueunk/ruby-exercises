#add the appropriate accessor methods. Keep in mind that @age should only be visible to instances of Person.
class Person
  attr_writer :age # @age getter should be private
  
  def older_than?(other)
    age > other.age
  end
  
  protected
  
  attr_reader :age
end

person1 = Person.new
person1.age = 17

person2 = Person.new
person2.age = 26

puts person1.older_than?(person2)#f

# private vs. protected
# when a method is private, only the class (not instances of the class) can access it. however, when a method is protected, only instances of the class or a subclass can call the emthod. This means we can easily share sensitive data between instances of the same class type.