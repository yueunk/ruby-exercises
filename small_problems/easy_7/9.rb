=begin
- write a method that takes two integer Array arguments
  - that returns a new Array that contains the product of every possible pair created by one from each array
  - which is then sorted by increasing value

input: two arrays, output: a new array
- write a method that takes two arguments
  - find all the pairs between two arrays -- how? can use #product
  - multiply each pair, put it in the result array
  - sort the result array
  
what I learned...
Array#product
=end

# def multiply_all_pairs(arr_1, arr_2)
#   arr_1.each_with_object([]) do |n_1, new_arr|
#     arr_2.each do |n_2|
#     new_arr << n_1 * n_2
#     end
#   end.sort
# end

# using #product
def multiply_all_pairs(a1, a2)
  a1.product(a2).map { |subarr| subarr.reduce(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]