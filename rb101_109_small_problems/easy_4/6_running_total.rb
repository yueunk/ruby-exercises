=begin
Q. Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

in my words...
  - write a method that takes an array (its elements are numbers)
    - return a same size array (its elements are the running total)
        - ex: [1, 2, 3] => [1, 3, 6]
 
input: array, output: array (transformed)
  - write a method that takes an array of numbers
  - create a new array to store the transformed values
  - transform the array so that each element corresponds to the accumulation of the numbers up to that index
  - for each element, sum the elements up to the current index by accessing the indexed elements
  - save the sum in the new array
  - return the new array

what I learned...
  - having an integer storage object "sum" allows you to accumulate the values up to the current value outside of the transformation ("#map") process
  
=end

def running_total(arr)
  new_arr = []
  
  arr.each_with_index do |n, idx|
    new_arr << arr[0..idx].sum
  end
  
  new_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# LS solution
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end