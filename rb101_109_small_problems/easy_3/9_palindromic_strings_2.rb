=begin

Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

in my words...
  - write a method? with a string argument
    - returns true if palindrome
    - rules: case **insensitive** & punctuation and spaces **does not** matter
  - can use the palindrome? method from the previous exercise
  
ex)
    real_palindrome?('madam') == true
    real_palindrome?('Madam') == true           # (case does not matter)
    real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
    real_palindrome?('356653') == true
    real_palindrome?('356a653') == true
    real_palindrome?('123ab321') == false

input: string; output: boolean
  - create a method that takes a string argument, that returns a boolean value
    - create an alphanumeric array containing all alphanumerics
    - mutate the string so that it only contains alphanumerics and all lowercase
    - pass the mutated string into the palindrome? method

what I learned...
  - String#delete (in conjunction with String#count)
    - string = string.downcase.delete('^a-z0-9') <== what is '^a-z0-9'
    - the argument for both String#delete & #count is the characters to be evaluated or negated (if starts with a carrot ^); a backslash \ escapes ^ or -
    - in case of two arguments -- it's the intersection of those to that will be deleted (^or not deleted)
  - what I don't like about my solution is the use of the argument name "string" when technically it becomes an array by the time of the reassignment...
=end

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  alphanumerics = ('0'..'9').to_a + ('a'..'z').to_a
  
  string.downcase!
  string = string.chars.select { |chr| alphanumerics.include?(chr) }
  
  palindrome?(string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false