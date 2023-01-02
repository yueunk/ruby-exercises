DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def integer_to_string(integer)
  integer.digits.reverse.map { |digit| digit = DIGITS.key(digit) }.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# what I learned...
# - Integer#divmod() 
#   - n, remainder = 123.divmod(10) ==> [12, 3]; n = 12, remainder = 3
# - mutating methods without the non-mutating counterpart do not have ! as part of their names (String, Array, Hash)
#   - String#prepend