=begin
in my words...
- write a method that converts String digits to Integer, without using #to_i

input: string, output: integer
- write a method that takes a string argument
- using the digits hash
  - assign each character to its corresponding key
  - depending on the size of the string, multiply converted digit integer accordingly
  - add the converted digit integers
  - return the integer
  
what I learned...
- see #each block in the LS solution -- I couldn't think of this logic, which is better than mine for eliminating the #reverse step
- save the digits as a constant variable so that it's accessible from the outside of the method
=end

def string_to_integer(string)
  digits = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9  }
  
  sum = 0
  string.chars.map { |digit| digit = digits[digit] }.reverse.each_with_index do |n, idx|
    sum += n * (10**idx)
  end
  
  sum
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570

# LS solution
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

# further exploration
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def hexadecimal_to_integer(string)
  sum = 0
  
  string.upcase!.chars.map { |digit| digit = DIGITS[digit] }.reverse.each_with_index do |n, idx|
    sum += n * (16**idx)
  end
  
  sum
end

p hexadecimal_to_integer('4D9f') == 19871
