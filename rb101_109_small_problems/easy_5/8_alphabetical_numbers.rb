=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

in my words...
  - write a method that takes one array argument
    - here, the array argument include Integers between 0 and 19
    - that returns a sorted array
      - here, the array is sorted based on the English words for each number; elements will be still integers
      
input: array, output: array
  - write a method that takes one array argument
  - convert the array elements to its English word counterpart -- create a hash where the integer is a key and the English word is a value?
  - sort the array by the value using sort_by
  - return the sorted keys in an array
  
what I learned...
  - sort_by is more powerful than you think...
    - use the arr as the index for words (which can be written as a CONSTANT.)
=end

def alphabetic_number_sort(arr)
  words = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  hsh = [arr, words].transpose.to_h
  hsh.sort_by do |_, word|
    word
  end.to_h.keys
end

# LS solution
NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

# test case
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]