=begin
Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

input: string, output: new string
- write a method that takes one string
  - that returns a new string
    - in which every first character of a word is capitalized & all else lowercase
    - words are any sequence of non-blank characters
=end

require 'pry'
def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ') # can be more succinct as below
  str.split.map(&:capitalize).join(' ') #(&:method_name) is shorthand for { |item| item.method_name }
end

# a solution without String#capitalize
def word_cap(str)
  lowercase_str = str.downcase
  lowercase_str.split.map do |word|
    word[0] = word[0].upcase
    word
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'