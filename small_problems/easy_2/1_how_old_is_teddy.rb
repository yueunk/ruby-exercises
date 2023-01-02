=begin

Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

in my words...
  - build a program to generate & print Teddy's age
  - ex) > Teddy is 69 years old!

input: range, output: string
generate a random number between 20 and 200
print a string with an extrapolation of the random value

what I learned...
  - Kernel module includes the rand method
  
Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use "Teddy" as the name if no name is entered.
  - 
=end

def teddy_age
  puts "=> What's your name?"
  name = gets.chomp.capitalize
  name = "Teddy" if name == ''
  age = rand(20..200)
  "#{name} is #{age} years old!"
end

teddy_age