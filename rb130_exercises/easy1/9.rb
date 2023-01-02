# #one? stops evaluting as soon as the block's return value is true for the second time

def one?(arr)
  count = 0
  arr.each do |val|
    count += 1 if yield(val)
    return false if count > 1
  end
  return false unless count == 1
  true
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false

# improvement 1 (peer answer)
def one?(arr)
  count = 0
  arr.each do |val|
    count += 1 if yield(val)
    return false if count > 1
  end
  # return false unless count == 1
  # true
  # the above two lines can be written as:
  count == 1
end

# improvement 2 (LS answer)
def one?(arr)
  seen_one = false
  arr.each do |val|
    # block's return value is false and seen_one stays false
    next unless yield(val) 
    # block's return value is true and seen_one was already true then that means it's seen twice; return false
    return false if seen_one
    # if seen for the first time this line will execute
    seen_one = true
  end
  seen_one
end

# last redo
def one?(arr)
  count = 0
  arr.each do |elem|
    count += 1 if yield(elem)
    return false if count > 1
  end
  count == 1
end

# takes one array argument
# returns true if the block returns true for exactly one of the element