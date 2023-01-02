# frozen_string_literal: true

# This program tells whether a number is perfect, abundant, or deficient.
class PerfectNumber
  def self.classify(num)
    raise StandardError if num < 1

    divisor_sum = (1...num).select { |n| (num % n).zero? }.sum
    if divisor_sum == num
      'perfect'
    elsif divisor_sum > num
      'abundant'
    else
      'deficient'
    end
  end
end
