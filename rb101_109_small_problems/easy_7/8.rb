=begin
write a method that takes TWO integer Arrays...
  - that returns a NEW array that contains the product of same indexed integers from two arrays, given the array sizes are the same.
input: two arrays, output: one new array
- write a method with two integer arrays arguments
- switch column and row for the two arrays using #transpose
- multiply all elements per newly created array
- return a new array containing the products
=end
def multiply_list(arr_1, arr_2)
  [arr_1, arr_2].transpose.each_with_object([]) do |subarr, new_arr|
    new_arr << subarr.reduce(:*)
  end
end

# using Array#zip
def multiply_list(arr_1, arr_2)
  arr_1.zip(arr_2).each_with_object([]) do |subarr, new_arr|
    new_arr << subarr.reduce(:*)
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]