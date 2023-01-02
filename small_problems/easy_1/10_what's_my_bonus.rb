=begin

Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

in my words...
  - write a method that...
    - takes TWO arguments
      - a postive integer & a boolean
    - calculates the bonus for a given salary
    - regarding the boolean argument...
      - if true, bonus is half of the salaray
      - if not, bonus is 0

input: pos integer & boolean
output: integer
intermediate?

algo
  - write a method that takes two arguments
    - for "true" as an input
      - divide the integer by 2, then return
    - for "false"
      - return 0
      
what I learned...
  - use parentheses for clarity for ternary operator

=end

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) :  0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
