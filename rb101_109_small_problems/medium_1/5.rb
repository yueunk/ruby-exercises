# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

=begin
input: an odd integer (n), output: multi-line strings (n lines)
- write a method that takes an odd integer argument, n
- that prints n lines of strings that displays a 4-pointed diamond in an n x n grid

what I learned...
- Kernel#format("%howmanyspaces(s|d)", ("s"|d))
- String#center(integer for max length, filler = '')
=end

def diamond(n)
  1.upto(n) do |num|
    puts ("*" * num).center(n) if num.odd?
  end
  (n - 1).downto(1) do |num|
    puts ("*" * num).center(n) if num.odd?
  end
end

p diamond(3)

=begin
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
=end