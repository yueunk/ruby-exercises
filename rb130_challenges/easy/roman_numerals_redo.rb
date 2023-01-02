# frozen_string_literal: false

# This program converts a given integer to its Roman numeral equivalent.
class RomanNumeral
  def initialize(number)
    @number = number
  end

  ROMAN_NUMERALS = {"M"=>1000, "CM"=>900, "D"=>500, "CD"=>400, "C"=>100, "XC"=>90, "L"=>50, "XL"=>40, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1}
  
  def to_roman
    result = ''
    num = @number.dup
    
    ROMAN_NUMERALS.each do |roman, int|
      next if num < int
      divisor, remainder = num.divmod(int)
      result << roman * divisor
      num = remainder
    end
  
    result
  end
end

