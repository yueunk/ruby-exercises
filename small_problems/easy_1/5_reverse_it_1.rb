=begin

Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

in my words...
- write a method, that takes one string argument
- returns a new string with words in reverse order

input: string
output: string
intermediate: array to store each word

create a method that takes one string argument
  - create an empty array to store each word of the string
  - reverse the order of the array
  - join the words into a string with a space inbetween
  - print the string
  
=end

def reverse_sentence(sentence)
  sentence.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''