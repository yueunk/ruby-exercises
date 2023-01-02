=begin
Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

Data Structure
- nested array

write a method that returns a boolean object
  - true if the string argument can be spelled from the block sets given
  - store the block sets in a nested array structure
  
convert the string into an array of characters
if the character belongs to an existing block, go to the next iteration
if the character belongs to a non-existing block, then it will return nil; use that value to return false for the program
    
=end
require 'pry'

# def block_word?(string)
#   string = string.downcase
#   blocks = [%w(b o), %w(x k), %w(d q), %w(c p), %w(n a), %w(g t), %w(r e), %w(f s), %w(j w), %w(h u), %w(v i), %w(l y), %w(z m)]
#   # iterate through the blocks array
#     # if the current block includes the current character, substitute the character with the first item of the current block
#   # now that string is revised... if the string contains uniq set of characters, return true; otherwise false
#   result = string.chars.each_with_object('') do |chr, result|
#             blocks.each do |block|
#               result << block[0] if block.include?(chr)
#               next
#             end
#           end
#   result.chars == result.chars.uniq
# end

# LS - try solving with Array#none?
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze # what's the purpose of #freeze if the code will not mutate the array?
def block_word?(string)
  up_string = string.upcase
  # BLOCKS.none? { |block| up_string.count(block) >= 2 }
  BLOCKS.all? { |block| up_string.count(block) <= 1 }
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true

# my redo (12/2/2021)
BLOCKS = %w(bo xk dq cp na gt re fs jw hu vi ly zm)

def block_word?(word)
  blockset = BLOCKS.dup
  word = word.downcase
  (0...word.size).each do |idx|
    blockset.delete_if { |block| block.include?(word[idx]) }
  end
  blockset.count == BLOCKS.count - word.size
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true