=begin

Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

in my words...
  - write a method that...
    - takes an array containing pos integers as an argument
      - no empty array!
    - returns the avg of all the integers
    
input: array
output: integer

algo
  - write a method with an array argument
    - add all the integers of the array
    - divide the sum by the size of the array
    - return the integer

what I learned...
- Enum#reduce (aka #inject) combines (not necessarily "add") all elements of the given array by applying a binary operation
  - this operation is specified by a block or symbol

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number } # don't understand... something related to the binary operation
  sum / numbers.count
end

=end

def average(array)
  (array.sum / array.size).to_f
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
