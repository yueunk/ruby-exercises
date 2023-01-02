=begin
Q. In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

in my words...
  - write a method? (boolean) that takes a pos integer argument
  - leap year is determined by...
    - divisible by 4, but NOT divisible by 100
    - divisible by 100, AND divisible by 400
  - return a boolean value
  
input: integer, output: boolean
  - write a method that takes one argument
  - return true if the input is divisible by 4 and NOT divisible by 100
  - return true if the input is divisible by 100 and divisible by 400
=end

def leap_year?(year)
  return true if (year % 4 == 0) && (year % 100 != 0)
  return true if (year % 400 == 0)
  return false
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
