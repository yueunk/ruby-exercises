# determine the kind of number
# perfect if Aliquot sum == given num
# abundant if Aliquot sum > given num
# deficient otherwise
# Aliquot num is the sum of divisors

# This program tells whether a number is perfect, abundant, or deficient.
class PerfectNumber
  def self.classify(num)
    raise StandardError unless num > 0

    if aliquote_sum(num) == num
      'perfect'
    elsif aliquote_sum(num) > num
      'abundant'
    else
      'deficient'
    end
  end
  
  class << self # adding a private instance method below to the class obj
    private
    
    def aliquote_sum(num)
      sum = 0
      (1...num).each do |n|
        sum += n if (num % n).zero?
      end
      sum
    end
  end
end
