=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

in my words...
  - write a method that takes an integer argument "num_digit"
    - that returns the first Fibonacci number that contains the "num_digit" number of digits
      - we need to calculate the fibonacci number to go through
      - in an array of fibonacci numbers, inspect each item for the number of digits and return the first occurence of the element
=end

require 'pry'

def find_fibonacci_index_by_length(num_digit)
  fibonacci = [1, 1]

  loop do
    fibonacci << fibonacci[-1] + fibonacci[-2]
    break if fibonacci[-1].to_s.length == num_digit # >=
  end
  
  fibonacci.size
end

p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# You may assume that the argument is always greater than or equal to 2.