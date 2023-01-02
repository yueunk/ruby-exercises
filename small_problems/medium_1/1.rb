=begin
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

input: an array, output: a new array
1. create a method that takes an array argument
2. make a copy of the array
3. remove the first element, append the removed element to the array
4. return the rotated array
=end

#my answer
# def rotate_array(array)
#   result = array.dup
#   result << result.shift
# end

#LS
def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

#LS further
def rotate_string(string)
  string.sub(string[0],'') + string[0]
end

# x = 'hello'
# p rotate_string(x)
# p x

def rotate_integer(integer)
  rotate_string(integer.to_s).to_i
end