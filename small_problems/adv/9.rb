=begin
Write two methods: one that takes a Rational number as an argument, and returns an Array of the denominators that are part of an Egyptian Fraction representation of the number, and another that takes an Array of numbers in the same format, and calculates the resulting Rational number. You will need to use the Rational class provided by Ruby.

1. write a method that takes a rational number as an argument and returns an array of the denominators that are part of an Egyptian Fraction representation of the number

2. write a method that takes an array of numbers, that calculates the resulting rational number. use the Rational class
=end
require 'rational'
# p Rational(numerator, denominator)

def egyptian(rat_num)
  result = []
  n = 1
  loop do
    if rat_num >= Rational(1, n)
      rat_num -= Rational(1, n)
      result << n
    end
    break if rat_num == Rational(0, 1)
    n += 1
  end
  result
end

def unegyptian(arr)
  arr.map { |n| Rational(1, n) }.reduce(:+)
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)