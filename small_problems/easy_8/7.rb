=begin
Write a method that takes a string, and returns a new string in which every character is doubled.
  - write a method that takes one string argument
    - that returns a NEW string
      - change: every character doubled
input: string, output: new string
 - write a method that takes a string
  - convert the string to an array of characters
  - for each character, push the character twice to a new result array
  - join the elements of the new array and print the array
=end

def repeater(str)
  str.chars.each_with_object([]) { |chr, result| result << chr * 2 }.join
end

# using a new string object, not a new array object
def repeater(str)
  new_str = ''
  str.each_char do |chr|
    new_str << chr * 2
  end
  new_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''