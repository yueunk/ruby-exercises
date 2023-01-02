=begin

Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

- in my words...
  - Write a method "odd" that takes one integer argument (including neg, zero, and pos)
  - if integer's absolute value is odd, it returns true
  - assume the argument is valid
  
- input: integer; output: boolean value

- write a method "odd" that takes one integer, n
- convert n into its absolute value
- check if the absolute value is an odd number
  - if so, return true
  - if not, return false
  
- know the difference between mod and remainder 
  - some languages use % for remainder while in Ruby % is modulus
  - modulus result will always follow the divisor

=end

def is_odd?(n)
  n % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# if % was remainder, n.abs in place of n would work