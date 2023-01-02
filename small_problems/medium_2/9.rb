=begin
Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

write a method that takes an Array argument (contains at least 2 elements)
sort that Array using the bubble sort algorithm (the input Array will be mutated)

what is a bubble sort?
  - make multiple passes (iterations) through the Array
  - each pass, each pair of consecutive elements is compared
  - if the 1st element > 2nd element, two are swapped
  - repeate until a complete pass is made without swaps <-- now Array is completely sorted
  
  # iterate through the array, two items at a time
  # the main loop involves the beginning index, while the length is 2
  # compare the two items, then sort
  # next iteration begins at the next index
  # check the sorted array after the completion of the iteration; if not sorted, then loop again
=end
require 'pry'

def bubble_sort!(array)
  loop do
    already_sorted = 0
    (0..array.size - 2).each do |idx|
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
      else
        already_sorted += 1
      end
    end
    break if already_sorted == array.size - 1
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)