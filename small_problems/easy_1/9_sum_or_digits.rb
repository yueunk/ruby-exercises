=begin

Write a method that takes one argument, a positive integer, and returns the sum of its digits.

in my words...
  - write a method that...
    - takes a pos integer argument
    - returns the sum of its digits
  - rule: no use of while, until, loop, or each
  
input: pos integer
output: integer

algo
  - write a method with one pos integer argument
    - convert the integer to a string in order to turn it into an array of digits
    - convert back the stringed digits to integer
    - add the elements of the array
    - return the result

what I learned...
  - shorthand version of Array#map { |x| x.method } is #map(&:method)
    - much more compact when chaining methods
  - can use Enum#reduce for an combinatory operation within the array elements
  
=end

# my answer
def sum(number)
  number.to_s.chars.map { |digit| digit.to_i }.sum
end

# solution
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
