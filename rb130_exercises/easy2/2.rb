# Array#zip combines the calling array and the argument into a nested array where an element from the same index from both arrays are stored in each subarray, where the calling object's array's element is positioned at index 0. If the calling object size exceeds that of argument, then nil is used as an element for the corresponding subarray at index 1. if the argument's size is bigger, the exceeding elements are ignored

# for this exercise, we assume the same length for both arrays

# the zip method takes two array arguments

def zip(arr1, arr2)
  (0...arr1.size).each_with_object([]) do |idx, result|
    result << [arr1[idx], arr2[idx]]
  end
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]