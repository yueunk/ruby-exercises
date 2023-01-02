=begin
In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

- input: a string
- output: a hash with three key-value pairs
  - the hash's keys represent the percentage of characters in the string for lowercase, uppercase, and neither
    -- how to calculate?
    
Question
- what constitutes a character? is a space a character? 
  - yes, a space is a character
  - lowercase is a-z (/[a-z]/)
  - uppercase is A-Z (/[A-Z]/)
  - neither is all non-letter characters including spaces (/[^a-z]/i)
Though Process:
- write a method that takes a string argument (at least 1 character included)
(the program calculates the percentage of lowercase, uppercase and neither in the string)
    - count the string size (make sure the space is counted; String#size)
    - iterate through the array of characters of a given string
    - count all lowercase letters in the string (String#count(regex))
    - count all uppercase letters in the string (String#count(regex))
    - neither would be the total character count - (lowercase + uppercase)
    - store the result in the hash and return -- will revisit
=end

def letter_percentages(string)
  result = Hash.new(0)
  total_count = string.size # Integer
  lowercase_count = 0
  uppercase_count = 0
  
  string.chars do |chr|
    case chr
    when /[a-z]/
      lowercase_count += 1
    when /[A-Z]/
      uppercase_count += 1
    end
  end
  
  result[:lowercase] = (lowercase_count.fdiv(total_count) * 100).round(1)
  result[:uppercase] = (uppercase_count.fdiv(total_count) * 100).round(1)
  result[:neither] = 100 - (result[:lowercase] + result[:uppercase]).round(1)
  
  result
end

# p letter_percentages('abCdef 123') #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
#   # if a space is a character, total of 8 characters
#   # lowercase percentage is (3 / 8) * 100
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')