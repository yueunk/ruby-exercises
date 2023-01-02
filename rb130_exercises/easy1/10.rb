# #count iterates through the arr
# if the current value results in the block's truthy return value, than add that to the counter
def count(arr)
  counter = 0
  arr.each { |val| counter += 1 if yield(val) }
  counter
end

# further - without using #each
def count(arr)
  counter = 0
  0.upto(arr.size - 1) { |idx| counter += 1 if yield(arr[idx]) }
  counter
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2