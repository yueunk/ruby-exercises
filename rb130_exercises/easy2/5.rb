# Enumerable#drop_while

# Enumerable#drop_while mutates the original collection
# as soon as the block returns false, it returns the array from that point on (block argument inclusive)

def drop_while(arr)
  arr.each_with_index do |elem, idx|
    return arr[idx..-1] unless yield(elem)
  end
  []
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []

# LS answer using while
def drop_while(array)
  index = 0
  # as soon as rvalue of && evaluates to false, the selection is returned
  while index < array.size && yield(array[index])
    index += 1 # this causes the index to reach beyond the max index for the array after the last element is iterated on the line before
  end

  array[index..-1]
end