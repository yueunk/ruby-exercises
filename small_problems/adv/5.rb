# write a method that rotates a matrix 90 degrees clockwise

def rotate90(matrix)
  row = matrix.size
  column = matrix[0].size
  (0...column).each_with_object([]) do |sub_idx, new_matrix|
    subarr = (row - 1).downto(0).each_with_object([]) do |main_idx, subarr|
               subarr << matrix[main_idx][sub_idx]
             end
    new_matrix << subarr
  end
end

matrix1 = [
  [1, 5, 8], #00, 01, 02 => 20, 10, 00
  [4, 7, 2], #10, 11, 12 => 21, 11, 01
  [3, 9, 6]  #20, 21, 22 => 22, 12, 02
]

matrix2 = [
  [3, 7, 4, 2], # 00, 01, 02, 03 => 10, 00
  [5, 1, 0, 8]  # 10, 11, 12, 13 => 11, 01 | 12, 02 | 13 03
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2