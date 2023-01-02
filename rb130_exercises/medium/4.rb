# write a method that takes an array as an argument. The method should yield the contents of the array to a block, which should assign your block variables in such a way that it ignores the first two elements, and groups all remaining elements as a raptors array.

def organize(arr)
  yield(arr[2..-1])
end

arr = %w(raven finch hawk eagle)
p organize(arr) { |elem| raptors = elem }

# LS - take advantage of blocks' lenient arity

def organize(arr)
  yield(arr)
end

arr = %w(raven finch hawk eagle)
p organize(arr) { |_, _, *elem| raptors = elem } # terminology: "block variables"
#  The splat operator on the name block variable tells Ruby to treat it as an Array and assign all remaining arguments to it. 