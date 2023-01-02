=begin
in my words...
  - write a method that takes two Array arguments
    - that returns an Array that contains all elements from two Arrays, excluding any duplicates
    
what I learned...
  - new method!!! Array#|
=end

def merge(arr_1, arr_2)
  (arr_1 << arr_2).flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]