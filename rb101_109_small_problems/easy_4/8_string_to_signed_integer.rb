DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  digits.shift if digits.first == nil

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  return value unless string.start_with?('-')
  -value
end

p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100

# LS solution -- by using the previous method

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

# further exploration -- refactor... need help!

def string_to_signed_integer(str)
  sign = str[0] == '-' ? -1 : 1
  str = str.delete("+-")
  string_to_integer(str) * sign
end