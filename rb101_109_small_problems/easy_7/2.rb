=begin
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

in my words...
- write a method that takes one string
  - that returns a hash that contains k-v pairs
    - keys being -- :lowercase, :uppercase, :neither
    - values being -- number of characters in the string that fits one of the key criteria
  
input: string, output: hash
- write a method that takes one string
  - evaluate the string character by character to see..
    - if it is lowercase
    - if it is uppercase
    - or if it is not a letter character
  - keep the count for each case in a hash
  - return the hash
=end

def letter_case_count(str)
  result = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |chr|
    case chr
    when /[a-z]/
      result[:lowercase] += 1
    when /[A-Z]/
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end
  end
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }