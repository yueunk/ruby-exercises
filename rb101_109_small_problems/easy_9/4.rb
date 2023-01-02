=begin
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

input: integer, output: integer array
- write a method that takes one integer argument
- create a new array and push all integers from 1 to the given integer
=end


def sequence(integer)
  # result = []
  # 1.upto(integer) { |n| result << n }
  # result
  
  (1..integer).to_a # LS answer
end

#further - neg int
def sequence(integer)
  integer > 0 ? (1..integer).to_a : (integer..-1).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5)
