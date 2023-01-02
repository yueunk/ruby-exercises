=begin

Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

in my words...
  - write a method? with a string argument
    - returns true if palindrome
    - rules: case sensitive & punctuation and spaces matter
ex)
    palindrome?('madam') == true
    palindrome?('Madam') == false          # (case matters)
    palindrome?("madam i'm adam") == false # (all characters matter)
    palindrome?('356653') == true

input: string; output: boolean
  - create a method that takes a string argument, that returns a boolean value
    - if palindrome?, true
      - check if the string and string backward are the same
    - otherwise, false

what I learned...
  - #reverse works on String and Array

=end

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true