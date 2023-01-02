=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

in my words...
- write a method that takes a string argument
  - the string argument consists of...
    - all lowercased words
    - an assortment of the non-alphabetic characters
  - that returns a string
    - where all non-alphabetic characters are replaced by spaces
      - no consecutive spaces -- multiple non-alphabetic characters in a row are replaced by one space

input & output: string
- write a method that takes a string argument
  - if any of the characters does not belong to a..z or space, replace it with a space
  - return the cleaned up string
=end

def cleanup(str)
  str.gsub(/[^a-z]/, ' ').gsub(/ +/, ' ')
end

# updated solution
def cleanup(str)
  str.gsub(/[^a-z]/, ' ').squeeze(' ')
end

# without regex
ALPHABET = ('a'..'z').to_a

def cleanup(str)
  clean_chars = []
  
  str.chars.each do |chr|
    if ALPHABET.include?(chr)
      clean_chars << chr
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

p cleanup("---what's my +*& line?") #== ' what s my line '