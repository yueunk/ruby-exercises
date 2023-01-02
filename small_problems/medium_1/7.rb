=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

input: string, output: string
- wrtie a method that takes a sentence string as input, and returns the same string with any sequence of the words corresponding to digits to a string of digits
  - task is to find all "number words" and conver them to a corresponding to digit strings

data structure: string, hash or nested array, array

though process:
create a number hash, in which number words are keys and digits are values
convert the input string into an array
iterate through an array of words -- transformation
  - if the current word is found in the hash, replace it with its associated value by using the index assignment
return the transformed array of words joined by a space into a string
=end
require 'pry'
def word_to_digit(string)
  numbers = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }
  # iterate through the string -- how?
  # any parts include the any key?
  # replace it to its value
  numbers.each do |key, value|
    string.gsub!(key, value)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'