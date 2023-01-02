=begin
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

- write a method that takes a string (non-empty)
  - that returns the middle character or characters
    - middle means: one character for odd-size string, two characters for even-size string

input: string, output: string
  - find the middle of the string... 
  0 1 2 3 4 5 6 (odd)
  7/2 = 3.5 (using size) or 6/2 = 3 (using index)
  using index, return the char at the index
  
  0 1 2 3 4 5 (even)
  6/2 = 3 (size) or 5/2 = 2.5
  using index with the decimal point dropped, return the char at the index for 2 characters
=end

def center_of(str)
  center_index = str.size / 2
  str.size.odd? ? str[center_index] : str[center_index - 1, 2]
end
  
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'