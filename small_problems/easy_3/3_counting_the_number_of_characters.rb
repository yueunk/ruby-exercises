=begin

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

in my words...
  - write a program that asks for a user input of a word or multiple words
  - count the characters of the input and print
    - space is NOT a character
    - symbols are characters
  
ex)
    Please write word or multiple words: walk
    There are 4 characters in "walk".

input: string(s); output: string
  - prompt a user for a word/words input
  - count the characters (without spaces)
  - print the result

what I learned...
  - double quotation needed for interpolated string
  - double quotation inside a double can be denoted as below \" \"
=end

print "Please write word or multiple words: "
word = gets.chomp
word_count = word.delete(' ').size
puts "There are #{word_count} characters in \"#{word}\"."