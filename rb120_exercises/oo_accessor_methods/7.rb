#add the appropriate accessor methods so that @name is returned with the added prefix 'Mr.'.
class Person # do not modify the name
  attr_writer :name
  def name # manually implement the getter method
    "Mr. #{@name}" # if getter was already implemented, name instead @name can be used
  end
end

person1 = Person.new
person1.name = 'James'
puts person1.name#Mr. James