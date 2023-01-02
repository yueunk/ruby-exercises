# Write a method that takes an optional block. If the block is specified, the method should execute it, and return the value returned by the block. If no block is specified, the method should simply return the String 'Does not compute.'.

=begin
- write a method called `compute`
  - it takes an optional block
  - if block
    - compute the values
  - if no block
    - prints "Does not compute"
=end

# def compute
#   block_given? ? yield : "Does not compute."
# end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

# what I learned
# Kernel#block_given?

# further exploration
# Modify the compute method so it takes a single argument and yields that argument to the block. Provide at least 3 examples of calling this new version of compute, including a no-block call.

def compute(elem)
  block_given? ? yield(elem) : "Does not compute."
end

p compute(5) { |a| a + 3 } == 8
p compute('a') { |a| a + 'b' } == 'ab'
p compute(1) == 'Does not compute.'
