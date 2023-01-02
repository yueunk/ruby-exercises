# Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.
=begin
input: a sorted array
output: a sorted array

- the output is a sorted array including all the integers missing between the first and the last item of the given array
=end

# def missing(arr)
#   (arr.first..arr.last).to_a - arr
# end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

# LS solution
# def missing(array)
#   result = []
#   array.each_cons(2) do |first, second|
#     result.concat(((first + 1)..(second - 1)).to_a)
#   end
#   result
# end

# what I learned...
# Enumberable#each_cons takes an Integer argument and a block, where the argument represents the number of arguments the block takes; for each iteration, that number of elements from the array are passed to the block and for the next iteration, that number of elements, now starting 1 index over (aka overlapping sequence), etc
# Array#concat is destructively combines the elements of the arrays into the exising array

# my second attempt
def missing(arr)
  result = []
  arr.each_cons(2) { |first, second| result.concat ((first + 1)..(second - 1)).to_a }
  result
end
