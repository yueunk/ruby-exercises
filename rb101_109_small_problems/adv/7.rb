# merge sorted array
# input: 2 arrays, output: one array
# rule: do not sort the result array; no mutation of the given arrays

def merge(arr1, arr2)
  result = []
  a1 = arr1.dup
  a2 = arr2.dup
  loop do
    break if a1.empty? || a2.empty?
    a1.first <= a2.first ? result << a1.shift : result << a2.shift
  end
  result + a1 + a2
end

p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]