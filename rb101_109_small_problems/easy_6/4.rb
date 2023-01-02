=begin
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

in my words...
  - write a method that takes an Array argument
    - that mutates the array by reversing the order of elements

input: array, output: mutated array
  - write a method that takes an Array argument
    - mutate the array by reversing the order of elements
      - how?
    - return the same object array
  - rule: no use of #reverse or #reverse!
=end

def reverse!(arr)
  arr.sort! { |a, b| arr.index(b) <=> arr.index(a) }
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true