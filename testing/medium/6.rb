# convert an array of integers to base 8 (octal numbers). 
def convert_to_base_8(n)
  n.to_s(8).to_i # implementation of what this method does
end

# base8_proc = method(:convert_to_base_8).to_proc # this method is now converted to a Proc

# this Proc is then passed in to #map, where & converts this Proc to a block, corresponding to the method body of #convert_to_base_8, which is a private method meaning you can't call it directly on an object like an Integer
# [8, 10, 12, 14, 16, 33].map(&base8_proc) # => [10, 12, 14, 16, 20, 41]

# review: my notes on &
# 1) & preceeding an argument name at the method definition 
# - this is regarding the associated block; & allows us to pass in the associated block explicitly to the method by converting it to a Proc object

# 2) & preceeding an argument name at the method invocation
# - & expects a Proc object or any object with #to_proc to convert it to a Proc; the Proc object is then converted to a block. Specifically when the object is a symbol, Symbol#to_proc converts it to a Proc that calls the named method on a passed object (here, what is the 'passed object?')
#   arr = [1, 2, 3]
#   arr.map(&:to_s)
# - here, & calls #to_proc on a Symbol object :to_s, converting it to a Proc instantiated with a block, in which #to_s is called on passed objects assigned to the block variables

# what I learned from this exercise...
# Object#method(:sym) looks up the named method as a receiver in obj, returning a Method object (or raising NameError). The Method object acts as a closure in obj's object instance, so instance variables and the value of self remain available.

# short answer would be this, as & accepts a Proc or any object with #to_proc, and we know that Method#to_proc exists 
p [8, 10, 12, 14, 16, 33].map(&method(:convert_to_base_8)) # => [10, 12, 14, 16, 20, 41]