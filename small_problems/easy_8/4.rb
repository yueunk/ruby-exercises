=begin
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

in my words...
  - more sophisticated version of #leading_substring; all_substrings are the elements of the returned array, ordered by the starting index
=end

def leading_substrings(str)
  result = []
  0.upto(str.size - 1) do |idx|
    result << str[0..idx]
  end
  result
end

# def substrings(str)
#   result = []
#   0.upto(str.size - 1) do |n|
#     n.upto(str.size - 1) do |idx|
#       result << str[n..idx]
#     end
#   end
#   result
# end

# LS solution
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]