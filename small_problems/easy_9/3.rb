=begin
Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

input: integer, output: integer
write a method that takes an integer argument
  - if the integer is positive
    - return the negative of that number
  - if negative or 0
    - return the original number
    
what I learned...
Integer#abs
=end

def negative(integer)
  # integer < 0 ? integer : -integer # my answer
  -integer.abs # LS further solution
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby