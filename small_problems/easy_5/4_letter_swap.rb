=begin
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

in my words...
  - write a method that takes one string
    - return a string in which the first and last letters of every word swapped
  - assume: at least one word per string, and string contains only spaces and word(s)
  - rule: case left intact when swapping
  
input & output: string
- write a method that takes one string
  - convert the string to an array of word(s)
  - for each word, somehow swap the first and the last letter
    - pop the last letter of the word and put prepend
    - repeat this until all words are evaluated
  - return the string
  
what I learned...
multi-assignment syntax: a, b = b, a (swapping via reassignment)
=end

def swap(str)
  new_str = str.split(' ').each do |word|
    word[0], word[-1] = word[-1], word[0]
  end

  new_str.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

