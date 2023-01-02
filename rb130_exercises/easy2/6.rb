# Enumerable#each_with_index

def each_with_index(arr)
  # pass in the current val and current idx to the block
  arr.each { |val| yield(val, arr.index(val)) }
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

# 0 -> 1
# 1 -> 3
# 2 -> 36
# true

# not using Array#index
def each_with_index(arr)
  idx = 0
  arr.each do |val|
    yield(val, idx)
    idx += 1
  end
end

# redone during rb139
def each_with_index(arr)
  (0...arr.size).each do |idx|
    yield(arr[idx], idx)
  end
  arr
end