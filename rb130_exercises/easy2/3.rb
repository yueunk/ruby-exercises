# Enumerable#map

# map returns a new array containing the same number of elements
# map takes an array argument and a block

# iterate through each element of the array
# pass in the current element to the block
# push the block's return value to the result array
# return the result array

def map(arr) # an explicit block via &block??
  arr.each_with_object([]) do |elem, result|
    result << yield(elem)
  end
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]