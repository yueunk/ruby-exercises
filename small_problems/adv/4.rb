# modify the previous method so it works with any matrix with at least 1 row and 1 column
require 'pry'
def transpose(matrix)
  row = matrix.size
  column = matrix[0].size
  (0...column).each_with_object([]) do |sub_idx, new_matrix|
    subarr = (0...row).each_with_object([]) do |main_idx, subarr|
               subarr << matrix[main_idx][sub_idx]
             end
    new_matrix << subarr
  end
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]