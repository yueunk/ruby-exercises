=begin
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

input: integer, output: integer
- write a method that takes an integer argument
- this method computes the difference between...
  - the square of the sum of the first n positive integers
  - AND the sum of the squares of the first n positive integers
  
  - what is "first n positive integers"?
    - 1 upto the given integer
  
- first we need to compute two things
  - 1) sum of first n positive integers then square the sum
  - 2) square each positive integer from 1 to n, the sum the results
- then get the difference between above two numbers
=end

def sum_square_difference(n)
  square_sum = (1..n).reduce(:+) ** 2
  sum_square = (1..n).map { |n| n ** 2 }.reduce(:+)
  [square_sum, sum_square].reduce(:-).abs
end

p sum_square_difference(3) #== 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150