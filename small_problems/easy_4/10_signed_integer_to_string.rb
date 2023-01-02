DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def integer_to_string(integer)
  integer.digits.reverse.map { |digit| digit = DIGITS.key(digit) }.join
end

def signed_integer_to_string(integer)
  if integer > 0
    integer_to_string(integer).prepend('+')
  elsif integer < 0
    integer_to_string(-integer).prepend('-') 
  else
    integer_to_string(integer)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# LS solution
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

# further exploration - refactor (from submitted answers)

def signed_integer_to_string(number)
  sign = ''
  (sign = (number.negative? ? '-' : '+')) unless number.zero?
  number *= -1 if sign == '-'
  sign + integer_to_string(number)
end

=begin
what I learned...
  - <=> spaceship operator to compare the left to the right
    - -1 if left side smaller, 0 if same, +1 if left side bigger
=end
