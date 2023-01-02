=begin
Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

in my words...
- write a method that takes a string argument
  - that returns the 2nd to the last word of the string
    - words: any non-blank character
  
input: string, output: string
- write a method that takes a string argument
- convert it to an array with words
- return the second to the last item from the array

what I learned...
- "edge cases" are those possible tricky situations -- what if the input is not a string? what if the string is empty? what if the string's word size is smaller than 2 words?
=end

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'