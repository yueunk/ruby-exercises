class Person
  attr_reader :phone_number # we don't want modification outside the class so _reader

  def initialize(number)
    @phone_number = number
  end
end

person1 = Person.new(1234567899)
puts person1.phone_number

person1.phone_number = 9987654321
puts person1.phone_number

# Modify the above code so that the value of @phone_number can still be read as on line 10, but cannot be changed as on line 12.