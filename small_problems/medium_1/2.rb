def rotate_array(array)
  array[1..-1] + [array[0]]
end

=begin
Write a method that can rotate the last n digits of a number.

1. write a method that takes two integer arguments, a and n
2. apply the rotation on n digits of the number a
=end

def rotate_rightmost_digits(a, n)
  digits_array = a.to_s.chars
  digits_to_sort, digits_to_remain = digits_array.partition { |digit| digits_array[-n..-1].include?(digit) }
  sorted_array = digits_to_remain + rotate_array(digits_to_sort)
  sorted_array.join.to_i
end

#LS - using the index assignment...
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

=begin
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.
=end
