=begin

Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

in my words...
  - take a number from a user 6 times
  - print a message that describes if the 6th number is included in the first 5 numbers
  
ex)
    ==> Enter the last number:
    18
    The number 18 does not appear in [25, 15, 20, 17, 23].

input: integer, output: string with an array
  - prompt a user for an integer
  - repeat 6 times
    - specify which time; ex) 1st, 2nd, ... , last
    - store each input in an array
  - check whether the last integer input appears in the first five inputs
    - print whether it's included

what I learned...
  - 
=end

ordinals = %w(1st 2nd 3rd 4th 5th last)
numbers = []
ordinals.each do |ordinal|
  puts "==> Enter the #{ordinal} number:"
  num = gets.chomp.to_i
  numbers << num
end

last_num = numbers.pop
numbers.include?(last_num) ? puts("The number #{last_num} appears in #{numbers}.") : puts("The number #{last_num} does not appear in #{numbers}.")