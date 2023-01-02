=begin
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

in my words...
  - write a method that takes one string argument
    - a string argument includes zero or more words (any character other than a space) separated by a space
    - that returns a hash with the length of words and its occurence, respectively.

input: string, output: hash
- create a method that takes a string
  - create an empty hash to store the result
  - convert the string to an array of words
    - get the size of each word
      - save the size as a key in the hash
      - add 1 to the value
  - return the hash
  
what I learned...
  - the difference between initializing a hash
    - {} vs. Hash.new(0)
      - The default value 0 in the latter forces any references to non-existing keys in counts to return 0 as opposed to nil.
=end

def word_sizes(str)
  result = {}
  words = str.split
  
  words.each do |word|
    result.has_key?(word.size) ? result[word.size] += 1 : result[word.size] = 1
  end

  result
end


# more succinct by adding the default return value at Hash initialization (LS solution)
def word_sizes(str)
  result = Hash.new(0)
  str.split.each do |word|
    result[word.size] += 1
  end
  result
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}