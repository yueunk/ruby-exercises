=begin
in my words...
  - write a method that takes ONE Array argument
    - that returns a nested array with two subarrays
      - first subarray contains the first half + 1 element (in case of odd num of elements)
      - second subarray contains the rest

input: one array, output: nested array with two subarrays
  - write a method that takes an array
    - if the array size is even
      - split the array in half and return a nested array
        - is there a method that does it???
    - if the array size is odd
      - the first subarray gets the middle positioned item in addition
      
  - rule: the return value will ALWAYS have two subarrays, and even if it is an empty array
  
what I learned...
  - #ceil
=end

require 'pry'

def halvsies(arr)
  # arr.partition { |item| arr.index(item) <= (arr.size - 0.5) / 2 }
  arr.partition { |item| arr.index(item) < (arr.size / 2.0).ceil }
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]