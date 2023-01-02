=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

in my words...
  - write a method that takes two arrays
    - that combines both arrays into one new array in which each array's order is preserved while the first array's elements and the second array's elements are alternated.
input: two arrays, output: a new array
  - write a method that takes two arrays
  - combine the arrays in a way that lists elements in order alternated, the first array's first element first then the first array's first element second, and etc.
=end

def interleave(arr_1, arr_2)
  # new_arr = []
  # new_arr << arr_1
  # new_arr << arr_2 this can be simplified as the next line
  [arr_1, arr_2].transpose.flatten
end

# using Array#zip
def interleave(arr_1, arr_2)
  arr_1.zip(arr_2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']