=begin 
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

(90..100) A
(80...90) B
(70...80) C
(60...70) D
(0...60) F

Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

write a method that takes three integers
calulcate the average of the three integers
assign a letter grade associated with the mean

what I learned...
using case statement reads as below...
  (range).include?(other_object)
when ... then -- using the then keyword for short
=end

def get_grade(x, y, z)
  mean = (x + y + z) / 3
  case mean
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
