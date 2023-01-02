=begin
Write a method that takes a positive integer as an argument and returns that number with its digits reversed
  - write a method that takes a pos integer argument
    - that returns that num with its digits reversed 

input: integer, output: integer
  - convert the integer to a string
  - reverse the string then convert to the integer
    - here, no leading zeros in the answer
  - return the value

what i learned...
  - ruby sees a number with leading zeros as an octal; here we don't have any examples with leading zeros passed in as an argument, so no worries, but keep it mind this could be a potential problem in the future.
=end

def reversed_number(int)
  int.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1