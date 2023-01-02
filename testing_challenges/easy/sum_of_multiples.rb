# frozen_string_literal: true

# This program computes the sum of multiples.
class SumOfMultiples
  def initialize(*mult)
    @multiples = [*mult]
  end

  def self.to(num, mult1 = 3, mult2 = 5)
    # create an array of integers from 1 to the given number, not inclusive
    # select the integers if they are multiples of mult1 or mult2
    (1...num).select { |n| (n % mult1).zero? || (n % mult2).zero? }.sum
  end

  def to(num)
    (1...num).select do |n|
      @multiples.any? { |mult| (n % mult).zero? }
    end.sum
  end
end
