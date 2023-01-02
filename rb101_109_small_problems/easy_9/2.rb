=begin 
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

- write a method that takes an integer argument
- that returns 2 times the given number, unless the num is a double number
  - double number is returned as-is
  
input: integer, output: integer
=end

# check for double number
#   - helper method
# if double number, return the given number as-is
# otherwise, double the given number and return that value

def double_number?(n)
  digits = n.to_s
  return false if digits.size.odd?
  half_length = digits.size / 2
  digits[0, half_length] == digits[half_length, half_length]
end

def twice(n)
  double_number?(n) ? n : n * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10