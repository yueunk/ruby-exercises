# frozen_string_literal: true

# This program converts a given integer to its Roman numeral equivalent.
class RomanNumeral
  def initialize(number)
    @number = number
  end

  ROMAN_NUMERALS = {
    'I' => 1,
    'IV' => 4,
    'V' => 5,
    'IX' => 9,
    'X' => 10,
    'XL' => 40,
    'L' => 50,
    'XC' => 90,
    'C' => 100,
    'CD' => 400,
    'D' => 500,
    'CM' => 900,
    'M' => 1000
  }.to_a.sort_by { |_, value| value }.reverse

  def to_roman
    roman = ''
    ROMAN_NUMERALS.each do |key, value|
      next if value > @number

      roman << key * (@number / value)
      @number %= value
    end
    roman
  end
end
