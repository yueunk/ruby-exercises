module Mailable
  def print_address
    puts "#{name}"
    puts "#{address}"
    puts "#{city}, #{state} #{zipcode}"
  end
end

class Customer # complete
  include Mailable
  
  attr_reader :name, :address, :city, :state, :zipcode
end

class Employee # complete
  include Mailable
  
  attr_reader :name, :address, :city, :state, :zipcode
end

betty = Customer.new 
bob = Employee.new
p betty.print_address
p bob.print_address