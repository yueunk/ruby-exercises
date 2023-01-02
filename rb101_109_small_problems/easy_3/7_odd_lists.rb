=begin

Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

in my words...
  - create a method takes an array argument
    - evaluate the array and return an array containing every other elements of the initial array (starting with the first element)
  - question: mutate the original array? or return a new array?

ex)
    oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
    oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
    oddities(['abc', 'def']) == ['abc']
    oddities([123]) == [123]
    oddities([]) == []

input: array; output: array
  - create a method that takes one array argument
    - select every other elements of the array
    - return the new array

what I learned...
  - can be solved with other looping mechanisms such as while

=end

def oddities(array)
  new_array = []
  
  array.each_with_index do |item, idx|
    new_array << item unless idx.odd?
  end
  new_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []