=begin
Our countdown to launch isn't behaving as expected. Why? Change the code so that our program successfully counts down from 10 to 1.
=end

# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   counter -= 1
# end

# puts 'LAUNCH!'
###

10.downto(1) do |n|
  puts n
end

puts 'LAUNCH!'

# the decrease method's param counter points to the integer object 10. inside the method definition, the counter is reassigned to an integer 1 less than the integer object it was pointing to.