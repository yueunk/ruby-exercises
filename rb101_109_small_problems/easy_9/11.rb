# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

=begin 
- write a program that takes an array of strings
- that prints out array(s) of anagrams
  - anagrams: same exact letters in different order
  
input: array, output: array
- write a program that takes words as an argument
- iterate through the array
  - are there anagrams of the current word? --- how?
  - if so, save them in a new array & remove them from the original array --- how???
  - otherwise go to the next word
=end

# for each word, convert it to an array of characters
# sort the word characters

# check for a match in the main array???

# push that to a result array for that match
# return the result array

require 'pry'
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

result = {}

words.each do |word|
  key = word.chars.sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  p v
end

# what I learend: for since for each key, there are many values, use an array data type to store all values that are associated with each key, since keys are unique in hash
# Array#push appends an element

# def anagrams(words)
#   sorted_words = words.map { |word| word.chars.sort.join }
#   hash = words.zip(sorted_words).to_h # [[original, sorted]]
#   result = []
#   hash.each_value do |value|
#     result << hash.keys.select { |key| hash[key] == value }
#   end
#   result.uniq.each { |subarray| p subarray }
# end

# p anagrams(words)

#["demo", "dome", "mode"]
#["neon", "none"]
#(etc)

