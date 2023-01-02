=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

Questions:
1. what is a featured number?
  - an ODD number, multiple of 7, digits occur once each
  - ex) 49 is a featured number
  - ex) 98 is NOT. NOT ODD.
  - ex) 97 is NOT. NOT multiple of 7
  - ex) 133 is NOT. digits NOT unique

To do...  
Input: an integer, Output: an integer (the next featured number bigger than the given integer)
Write a method that takes an integer
- find the nearest 7 multiples of the input integer that is smaller; initialize a local variable to that number
- if the next seven multiple is odd AND contains unique digits, return that number
- once the next seven multiple reaches the highest possible unique number, return an error message

Return an error message if there is no next featured number
- my current program will never exit unless a featured number is found... how do we handle this?
- break condition should include the highest possible unique number
=end

def featured(integer)
  seven_multiple = integer - integer % 7
  loop do
    seven_multiple += 7
    return seven_multiple if seven_multiple.odd? && seven_multiple.digits == seven_multiple.digits.uniq
    break if seven_multiple >= 9876543211
  end
  "error: no possible number"
end

p featured(12) == 21
p featured(20) #== 21
p featured(21) == 35
p featured(997) #== 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
