=begin
in my words...
  - write a method that takes a pos integer argument
    - that displays a right triangle with its sides made up of n stars
    - hypotenuse is from lower-left to upper-right

input: integer, output: string display
  - write a method that takes a pos integer argument
  - format the display of the triangle so that...
    - each line has ndigit
    - first line has one start at the end of the line
    - the display comprises of n number of lines
    
what I learned...
  - incorporate the inverse relationship between the number of spaces and the number of stars
=end

# my answer returns nil without n as the last line of code
# def triangle(n)
#   m = 1
#   loop do
#     puts format("%#{n}s", "*" * m )
#     break if m == n
#     m += 1
#   end
#   n
# end

# LS answer returns num
# def triangle(num)
#   spaces = num - 1
#   stars = 1

#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end

p triangle(9)
