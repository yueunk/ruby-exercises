#add the appropriate accessor methods. Keep in mind that the last_name getter shouldn't be visible outside the class, while the first_name getter should be visible outside the class
class Person
  attr_accessor :first_name # should be visible outside the class
  attr_writer :last_name # shouldn't be visible outside the class
  
  def first_equals_last?
    first_name == last_name # the private last_name getter method is visible inside the class so this works; it is invisible from the outside
  end
  
  private
  
  attr_reader :last_name
end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last? #f