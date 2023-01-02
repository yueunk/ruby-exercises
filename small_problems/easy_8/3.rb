=begin
Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

in my words...
  - write a method that takes one string argument
    - that returns an array
      - the array contains substrings of the string passed in
        - with the incremental length, from shortest to the longest

input: string, output: array
  - write a method that takes one string
    - create an empty array for substrings
      - push each substring into the array
        - from length 1 to length of the original string
        
what I learned...
- Integer#upto(limit)
  - ex: 5.upto(10) {|i| print i, " " }   #=> 5 6 7 8 9 10
=end

def leading_substrings(str)
  result = []
  idx = 0
  
  loop do
    result << str[0..idx]
    idx += 1
    break if idx >= str.size
  end
  
  result
end

# using #upto
def leading_substrings(str)
  result = []
  0.upto(str.size - 1) do |idx|
    result << str[0..idx]
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

