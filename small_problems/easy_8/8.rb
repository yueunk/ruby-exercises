=begin
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
  - check for consonant character, and double them
=end


def double_consonants(str)
  new_str = ''
  str.each_char do |chr|
    new_str << chr
    new_str << chr if chr =~ /[b-df-hj-np-tv-z]/i # this could be written as... see below
  end
  new_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

# chr =~ /[a-z]/i && chr =~ /[^aeiou]/i