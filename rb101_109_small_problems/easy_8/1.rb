=begin
in my words...
- write a method that takes an integer array
  - that returns the sum of the first item, then of the first two items, ... then of n items

input: array, output integer
- write a method that takes an integer array
- iterate through the array and accumulate the value each time
- return the sum of sums
=end

def sum_of_sums(num_arr)
  sum = 0
  num_arr.each_with_object([]) do |num, sum_arr|
    sum_arr << (sum += num) # sum += num => 0 + 3 = 3; 3 + 5 = 8; 8 + 2 = 10 
  end.reduce(:+)
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35