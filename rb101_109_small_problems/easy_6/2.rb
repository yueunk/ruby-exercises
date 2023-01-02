=begin
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

in my words...
  - write a method that takes an array of strings
    - that returns an array of the same string values, excluding aeiou.

input: array, output: array
  - write a method that takes an array of strings
  - transform the array so that each element has aeiou removed using regex
  - return the string
=end

# def remove_vowels(arr)
#   arr.map do |str|
#     str.delete("aeiouAEIOU")
#   end
# end

def remove_vowels(arr)
  arr.map do |str|
    str.gsub!(/[aeiou]*/i, '')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']