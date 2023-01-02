=begin
A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array and all of the sub-Arrays has 3 elements. 

transform this matrix 
1  5  8 a[0]: [0][1][2] => a[0][0], a[1][0], a[2][0]
4  7  2 a[1]: [0][1][2]
3  9  6 a[2]: [0][1][2]

to this
1  4  3 a[0]: [0] a[1][]
5  7  9 a[1]: [1]
8  2  6 a[2]: [2]

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

input: nested array, output: nested array
- without modifying the original nested array, transform the array so that the matrix's rows and columns are swapped
- main array index and subarray index are swapped
  - instead of 00, 01, 02; 00, 10, 20
  - instead of 10, 11, 12; 01, 11, 21
  - instead of 20, 21, 22; 02, 12, 22
=end

def transpose(matrix)
  (0..2).each_with_object([]) do |sub_idx, new_matrix|
    subarr = (0..2).each_with_object([]) do |main_idx, subarr|
               subarr << matrix[main_idx][sub_idx]
             end
    new_matrix << subarr
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]