=begin
Sort an array of passed in values using merge sort. You can assume that this array may contain only one type of data. And that data may be either all numbers or all strings.

Merge sort is a recursive sorting algorithm that works by breaking down the array elements into nested sub-arrays, then recombining those nested sub-arrays in sorted order. It is best shown by example. For instance, let's merge sort the array [9,5,7,1]. Breaking this down into nested sub-arrays, we get:

[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]

We then work our way back to a flat array by merging each pair of nested sub-arrays:

[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]

  
=end

#   var l1 as array = a[0] ... a[n/2]
#   var l2 as array = a[n/2+1] ... a[n]

#   l1 = mergesort( l1 )
#   l2 = mergesort( l2 )

#   return merge( l1, l2 )
# end procedure
require 'pry'
def merge(arr1, arr2)
  result = []
  a1 = arr1.dup
  a2 = arr2.dup
  loop do
    # binding.pry
    break if a1.empty? || a2.empty?
    a1[0] <= a2[0] ? result << a1.shift : result << a2.shift
  end
  result + a1 + a2
end

def merge_sort(arr)
  return arr if arr.size <= 1
  half = arr.size / 2
  a, b = [merge_sort(arr[0, half]), merge_sort(arr[half..-1])]
  merge(a, b)
end

p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]
p merge_sort([5, 3])# == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) #== [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]