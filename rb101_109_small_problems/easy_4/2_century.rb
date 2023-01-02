=begin
Q. Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

in my words..
  - write a method that takes one integer (year) argument
    - returns a corresponding century in string with an appropriate ending (st, nd, rd, or th)

input: pos integer, output: string, intermediate: hash?
- write a method that takes one integer argument
- figure out the relationship between the range of years and the century methametically 
  - if the year is one or two digits or 100, it's 1st century (1..100)
  - if the year is three digits or 1000, it's 2nd to 10th century (101..1000)
  - if the year is four digits or 10000, it's 11th century to 100th century (1001..10000)
  - and so on...
  
  - 1c (1..100), 2c (101..200), 3c (201..300), ...
  - 2000 - 1 = 1999 --> drop two digits --> 19 + 1 => 20c
  - 2001 => 21c
  - 1965 => 20th
  - 2 digit => 1c

- for each input, calculate the correct century numerically
- then convert the century to a string and concatenate with an appropriate ending to return

what I learned...
  - year - 1 is only necessary in certain conditions (ex. 2000); perform this for those conditions only
  - can write a method for suffix
  - use % to access the remainders -- ones, tens, etc
=end

def century(year)
  century = (((year - 1) / 100) + 1).to_s
  if century.end_with?('11', '12', '13')
    century + 'th'
  elsif century.end_with?('1')
    century + 'st'
  elsif century.end_with?('2')
    century + 'nd'
  elsif century.end_with?('3')
    century + 'rd'
  else
    century + 'th'
  end
end

# test cases:
  p century(2000) == '20th'
  p century(2001) == '21st'
  p century(1965) == '20th'
  p century(256) == '3rd'
  p century(5) == '1st'
  p century(10103) == '102nd'
  p century(1052) == '11th'
  p century(1127) == '12th'
  p century(11201) == '113th'