#create a class named Person with an instance variable named @secret. Use a setter method to add a value to @secret, then use a getter method to print @secret.

class Person
  attr_accessor :secret

  # def initialize # this is not even necessary..?
  #   @secret
  # end
end
person1 = Person.new
person1.secret = 'Shh.. this is a secret!' # setter
puts person1.secret