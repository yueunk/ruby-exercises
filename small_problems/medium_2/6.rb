=begin
write a method that takes 3 angles of a triangle as arguments
return a symbol :right, :acute, :obtuse, or :invalid depending on the angle

:right is when angle == 90
:acute is when angle < 90
:obtuse is when angle > 90
:invalid when angle sum is not 180 or if any angle is 0
=end

def triangle(a, b, c)
  angles = [a, b, c]
  return :invalid if angles.any?(0) || angles.reduce(:+) != 180
  return :right if angles.any?(90)
  return :obtuse if angles.any? { |angle| angle > 90 }
  :acute
end
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid