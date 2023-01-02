=begin

Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

- in my words...
  - write a method that takes a positive integer argument
  - return a list of the digits in the number

- input: pos integer; output: array of integers

- write a method that takes a positive integer
- produce an array of digits using digits method
- reverse the order of the elements to reflect the digits array from the test cases

=end

def digit_list(integer)
  integer.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true