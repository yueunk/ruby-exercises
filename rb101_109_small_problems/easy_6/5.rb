=begin
Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

in my words...
  - write a method that takes an Array argument
    - that returns a NEW array with the elements in reverse order

input: array, output: new array
=end

def reverse(arr)
  arr.sort { |a, b| arr.index(b) <=> arr.index(a) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true