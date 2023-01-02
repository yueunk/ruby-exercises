# the Range#step method
# create a method that works like Range#step, but takes three arguments for 1) start of the range, 2) last of the range, 3) the integer argument passed to Range#step

# iterate through the range of integers
# next if the current element is on nth multiples position
# returns the calling range

# returns a range
def step(first, last, n)
  (first..last).each_with_index do |elem, index|
    yield(elem) if index % n == 0
  end
end

p step(1, 10, 3) { |value| puts "value = #{value}" }

# redo 1/26/22
def step(a, b, n)
  value = a.dup
  while value <= b
    yield(value) 
    value += n
  end
  a
end