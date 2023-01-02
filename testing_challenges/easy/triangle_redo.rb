# write a program that determines the kind of triangle
# equilateral: all sides same
# isosceles: two sides same
# scalene: all diff

# ArgumentError if invalid triangle
# helper for #valid?
# valid if all sides > 0
# valid if sum of any two sides > the other side

# This class determines the kind of trangle based on three sides.
class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
    raise ArgumentError, "invalid lengths" unless valid?
  end
  
  def kind
    case @sides.uniq.size
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    else 'scalene'
    end
  end
  
  private
  
  def valid?
    @sides.all? { |side| side > 0 } && @sides[0, 2].reduce(&:+) > @sides[-1]
  end
end
