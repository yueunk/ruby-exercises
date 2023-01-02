=begin
A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

- input: three integers, output: a symbol
- write a method that takes the lengths of the 3 sides of a triangle
- if any of the arguments is 0, return :invalid
- if all sides are the same, return :equilateral

- if two sides are the same and the other smaller (non-zero), return :isosceles
- if all sides are different
  - compare the largest argument to the sum of the other two
    - if the largest argument is smaller than the sum, return :scalene
    - otherwise :invalid
=end
require 'pry'
def triangle(a, b, c)
  sides = [a, b, c]
  return :invalid if sides.any?(0)
  return :equilateral if sides.all?(a)
  a, b, c = sides.sort # c is the largest side
  if a + b < c
    return :invalid
  elsif b == c
    return :isosceles
  else
    return :scalene
  end
end
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid