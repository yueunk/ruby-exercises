=begin

Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

in my words...
  - write a program that takes 2 pos integers from a user
  - do following operations on those two inputs
    - +, -, *, /, %, **
    - then print the result
  
ex)
    ==> Enter the second number:
    17
    ==> 23 + 17 = 40

input: pos integers, output: string
  - prompt a user for a pos integer 2 times
  - operate on those numbers & print result
    - 6 operations to do here (+, -, *, /, %, **)

what I learned...
  - edge cases to consider
    - for division, second number shouldn't be a 0
    - what if float was used instead?
=end

operators = [:+, :-, :*, :/, :%, :**]
numbers = []

puts "==> Enter the first number:"
a = gets.chomp.to_i
numbers << a

puts "==> Enter the second number:"
b = gets.chomp.to_i
numbers << b

operators.each do |operator|
  puts "==> #{a} #{operator.to_s} #{b} = #{numbers.reduce(operator)}"
end