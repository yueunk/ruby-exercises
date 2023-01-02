# if any block return value is true, return false
# def none?(arr)
#   !!arr.each { |val| return false if yield(val) }
# end

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true

# LS answer: use the previously defined #any? however, you have to explicitly pass in the block, as blocks are not passed down the calling chain
def any?(arr)
  # return false if arr.empty? # this is unnecessary
  !arr.each { |n| return true if yield(n) }
end

def none?(collection, &block)
  !any?(collection, &block)
end