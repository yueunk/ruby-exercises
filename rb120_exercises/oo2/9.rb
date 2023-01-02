#add a method named share_secret that prints the value of @secret when invoked.

class Person
  attr_writer :secret
  def share_secret
    puts secret # this is a getter method private to the class; can't be invoked outside the class
  end
  private

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
p person1.share_secret