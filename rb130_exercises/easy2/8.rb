# Enumerable#max_by returns the element for which the block returned the largest value.

# iterate through the array
# pass the current element to the block
# save the return value of the block in the result array
# return the largest value of the result array

# save the elem and the block return in a hash?
# return the key if the value is the largest among them?
def max_by(arr)
  pair = {}
  arr.each do |elem|
    pair[elem] = yield(elem)
  end
  pair.key(pair.values.max)
end

# without using max

# two local variables: max_element, largest
# if the current element yields a larger value than the largest, then reassign largest to the current yield value as well as the current value to the max_element

def max_by(arr)
  return nil if arr.empty?
  
  max_element = arr.shift
  largest = yield(max_element)
  
  arr.each do |element|
    max_element, largest = element, yield(element) if yield(element) > largest
  end
  
  max_element
end

p max_by([1, 5, 3]) { |value| value + 2 } #== 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil

# redone during rb139
def max_by(arr)
  return nil if arr.empty?
  
  max_elem = arr.first
  largest = yield(max_elem)
  
  (1...arr.size).each do |idx|
    max_elem, largest = [arr[idx], yield(arr[idx])] if yield(arr[idx]) > largest
  end
  
  max_elem
end