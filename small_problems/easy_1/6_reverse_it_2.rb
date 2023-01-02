=begin

Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

in my words...
- write a method
  - takes one string argument (one or more words)
    - string means letters and spaces (for more than one word) only
  - returns the given string with any word with 5+ characters reversed
  
input: string
output: string with selective reversal on a word level
intermediate: array

write a method that takes a string argument
  - turn the string into an array and store it to an object (words)
  - for each word
    - turn the word into an array of characters
    - if the number of characters are same or larger than 5, reverse the order of characters
    - turn the character array into a word string
  - turn the word array into a string and return
  
what I learned here...
  - a word can be reversed (asdf => fdsa) in a string form; no need to convert to an array
=end

# def reverse_words(string)
#   words = string.split

#   words.map! do |word|
#     chr = word.chars # this is not necessary because String#reverse exists
#     chr.reverse! if chr.count >= 5
#     chr.join
#   end
  
#   words.join(" ")
# end

def reverse_words(string)
  string.split.each { |word| word.reverse! if word.size >= 5 }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

