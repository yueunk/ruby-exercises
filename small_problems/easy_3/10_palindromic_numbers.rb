=begin

Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

in my words...
  - write a method? with an integer argument
    - returns true if palindrome
ex)
    palindromic_number?(34543) == true
    palindromic_number?(123210) == false
    palindromic_number?(22) == true
    palindromic_number?(5) == true

input: integer; output: boolean
  - create a method that takes an integer argument, that returns a boolean value
    - if palindrome?, true
      - check if the integer and integer backward are the same (convert to string?)
    - otherwise, false

what I learned...
  - if the integer starts with zeros, ruby thinks it's an octal then converting it a base-10 as a string
=end


def palindromic_number(integer)
  integer.to_s == integer.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true