# frozen_string_literal: true

# This class determines the kind of trangle based on three sides.
class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
    raise ArgumentError if @sides.any? { |n| n <= 0 } || @sides[0, 2].sum <= @sides[-1]
  end

  def kind
    if @sides.uniq.size == 1
      'equilateral'
    elsif @sides.uniq.size == 2
      'isosceles'
    else
      'scalene'
    end
  end
end
