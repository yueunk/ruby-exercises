=begin
Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

in my words...
  - modify the word_sizes method with a new definition of 'word'
    - word is comprised of only letters
      - ex. it's is a 3-letter word
      
input: string, output: hash
  - exclude non-letter from the str prior to splitting
  
what I learned...
  - how to use regex to delete patterns
  - recap String#count, String#delete
=end

def word_sizes(str)
  result = Hash.new(0)
  new_str = str.delete('^a-zA-Z ')

  new_str.split.each do |word|
    result[word.size] += 1
  end
  result
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}