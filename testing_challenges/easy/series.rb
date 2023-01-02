# frozen_string_literal: true

# This program converts a digit string into all series of consecutive numbers at a specified length.
class Series
  def initialize(str)
    @str = str
  end

  # def slices(integer)
  #   raise ArgumentError if integer > @str.size

  #   digit_arr = (0..@str.size - integer).map do |idx|
  #     @str[idx, integer].split('')
  #   end
  #   digit_arr.each { |arr| arr.map!(&:to_i) }
  # end

  def slices(integer)
    raise ArgumentError if integer > @str.size

    @str.chars.map(&:to_i).each_cons(integer).to_a
  end
end
