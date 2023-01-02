#Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

=begin
Problem:
- this method returns a boolean value
- it returns true if the given string is properly balanced
- properly balanced means parentheses must occur in a pair '(' and ')', in order.
  
input: a string, output: a boolean object
*- we want the string with only parentheses
*  - delete any character that is not parenthese using String=~regex
*- if the string starts with a close parenthesis, return false
- for each open parenthesis, find a close parenthesis after that open parenthesis
  - replace the found parenthese?? necessary?
  - if not found, return false
=end
require 'pry'
def balanced?(string)
  string.gsub!(/[^\(\)]/, '')
  open_paren = '('
  close_paren = ')'
  return false if string.count(open_paren) != string.count(close_paren) || string.start_with?(close_paren) || string.end_with?(open_paren)
  string.chars.each_with_index do |paren, idx|
    if paren == open_paren
      string[idx] = ' ' # this will preserve the idx while the string is mutated
      string.index(close_paren).nil? ? (return false) : string[string.index(close_paren)] = ' '
    end 
  end
  true
end

#LS solution
def balanced?(string)
  parens = 0 # 0 means balanced; 1 means -1 should come in to balance it; 2 means -1 should come in twice to balance it back to 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0 # the moment more close_paren is introduced, balance is off
  end

  parens.zero?
end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false

p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false

p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false