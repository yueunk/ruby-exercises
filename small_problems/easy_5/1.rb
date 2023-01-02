=begin
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

in my words...
  - write a method that takes one string argument
    - returns the ASCII string value of a string
      - ASCII string value is the sum of the ASCII values of every character
      - use String#ord to determine the ASCII value of a character
input: string, output: integer

iterate through the string collection, get the ASCII value for each character, add them up

what I learend...
String#ord to get ASCII value in integer
Integer#chr to get the character of the ASCII value (caller)

=end

def ascii_value(str)
  val = 0
  str.chars.each { |chr| val += chr.ord }
  val
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

