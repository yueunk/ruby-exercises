=begin
Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

ex)
    >> Please enter an integer greater than 0:
    5
    >> Enter 's' to compute the sum, 'p' to compute the product.
    s
    The sum of the integers between 1 and 5 is 15.
    
    
    >> Please enter an integer greater than 0:
    6
    >> Enter 's' to compute the sum, 'p' to compute the product.
    p
    The product of the integers between 1 and 6 is 720.

in my words...
  - write a program that gets an integer (n > 0) from an user
  - and asks the user whether to compute the sum or the product for a range of numbers from 1 to the user input
  
breakdown...
  - input: integer & string, output: string

  - write a prompt asking the user for an integer input larger than 0
  - write a prompt asking the user whether to compute the sum or the product
    - if sum, add up all the numbers in the range
    - else, multiply all the numbers in the range 
  - display the sum or the product depending on the user's answer for the second prompt
    
what I learned...
  - check the validity of the user input
  - assume there are more than given options -- the invalid one
    - instead of using if/else, use if/elsif/else for the invalid possibility
  - structure the code in a way that an operation only gets executed when needed, not prior to -- saves time/energy/redundancy!
  - Enumberable#inject and Enumberable#reduce are aliases
=end

# my initial answer
def prompt(str)
  ">> #{str}"
end

puts prompt("Please enter an integer greater than 0:")
integer = gets.chomp.to_i
integers = (1..integer).to_a

puts prompt("Enter 's' to compute the sum, 'p' to compute the product.")
sum_or_product = gets.chomp.downcase
sum = integers.reduce(&:+)
product = integers.reduce(&:*)

p sum_or_product == 's' ? "The sum of the integers between 1 and #{integer} is #{sum}." : "The product of the integers between 1 and #{integer} is #{product}."

# my refined version
def compute_sum(integer)
  integers = (1..integer).to_a
  integers.reduce(&:+)
end

def compute_product(integer)
  integers = (1..integer).to_a
  integers.reduce(&:*)
end

integer = ""
sum_or_product = ""

loop do
  puts ">> Please enter an integer greater than 0:"
  integer = gets.chomp.to_i
  break if integer.class == Integer && integer > 0
  puts "Invalid answer. Please enter an integer GREATER THAN 0." 
end

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  sum_or_product = gets.chomp.downcase
  break if sum_or_product == 's' || sum_or_product == 'p'
  puts "Invalid answer. Please enter 's' or 'p'." 
end

if sum_or_product == 's'
  sum = compute_sum(integer)
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
else
  product = compute_product(integer)
  puts "The product of the integers between 1 and #{integer} is #{product}."
end