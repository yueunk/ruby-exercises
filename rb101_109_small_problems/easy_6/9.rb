=begin
in my words...
  - write a method that takes two arguments - array and value
    - that returns a boolean value if the search value is in the array
  - rule: do not use Array#include?

input: array and value, output: boolean value
  - write a method that takes two arguments
  - find the item in the array
    - if it exists, return true
    - otherwise, false

what I learned...
  - Array#find_index scans the array for the first element that has the specified value
=end

require 'pry'

def include?(arr, search_item)
  !arr.each { |item| return true if item == search_item }
end

# LS "easy" way
# def include?(array, value)
#   !!array.find_index(value)
# end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false