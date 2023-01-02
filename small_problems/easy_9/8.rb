=begin 
Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

input: two integer arguments, output an array of integers
write a method that takes two integer arguments
  - first integer argument refers to the number of elements of the return array
  - second integer argument refers to the multiplier for each integer element of the return array
  
what I learned... Enum#map on range
=end

# def sequence(size, multiplier)
#   sequence_array = []
#   1.upto(size) { |n| sequence_array << multiplier * n }
#   sequence_array
# end

# LS using range and map
def sequence(count, first)
  (1..count).map { |n| n * first }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []