require 'pry'
def neutralize(sentence)
  words = sentence.split(' ')
  words.dup.each do |word| # use Array#select or Array#reject or Array#reject! to iterate over
    words.delete(word) if negative?(word)
  end
  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# We wrote a neutralize method that removes negative words from sentences. However, it fails to remove all of them. What exactly happens?

# the words array is mutated as each "negative word" is deleted from the array upon the delete method invocation; this affects the result because #each iterates over the array at each index incremently in real time despite the deletion of the elements of the array. In order to fix this, we should use a method that will not mutate the object that we are iterating over at the each method invocation.
