=begin

The || operator returns a truthy value if either or both of its operands are truthy. If both operands are falsey, it returns a falsey value. The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

in my words...
  - create a method? that takes two arguments
    - if exactly one of the arguments is truthy, return true
    - otherwise, false
  
ex)
    xor?(5.even?, 4.even?) == true
    xor?(5.odd?, 4.odd?) == true
    xor?(5.odd?, 4.even?) == false
    xor?(5.even?, 4.odd?) == false

input: integers; output: boolean value

what I learned...
  - shorthand if short enough (be careful with the syntax change -- no end)
    - there is an even shorter version using ternary operation
  - last line is assumed to be returned -- can write false instead of return false
  - argument name can't end with a ?
  - !! forces it to return a boolean value
    - in this case... without !!, it still works properly -- what would be an example where !! is absolutely necessary?
  - the ^ bit-wise operator: if both values are both boolean or both numeric, this works as an exclusive-or operator; however, unexpected result when those conditions are not met
  - !! and && are called short-circuit operators meaning the second operand is not evaluated if its value is no longer needed
    - I think xor operations do not use a short-circuit operation
=end

def xor?(a, b)
  return true if a && !b
  return true if b && !a
  false
end

def xor?(a, b)
  !!((a && !b) || (!a && b))
end