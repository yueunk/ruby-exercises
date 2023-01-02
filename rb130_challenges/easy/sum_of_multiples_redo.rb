# frozen_string_literal: true

# This program computes the sum of multiples.
class SumOfMultiples
  def initialize(*mult)
    @mult = mult
  end
  
  def self.to(num)
    SumOfMultiples.new(3, 5).to(num)
  end

  def to(num)
    sum = 0
    (1...num).each do |n|
      sum += n if @mult.any? { |int| n % int == 0 }
    end
    sum
  end
end
