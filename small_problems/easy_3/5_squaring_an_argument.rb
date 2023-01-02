=begin

Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

in my words...
  - create a method that takes one integer argument
    - that computes the square of the integer
    - by using the multiply method
  
ex)
    square(5) == 25
    square(-8) == 64

input: integer; output: integer
  - create a method that takes one integer argument
  - multiply the argument by itself
  - return the result

what I learned...
  - ** exponential

=end

def multiply(a, b)
  a * b
end

def square(n, expo)
  multiply(n, 1) ** expo
end

p square(0, 5)
p square(2, 4)