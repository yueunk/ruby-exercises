=begin
<problem>
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

in my words...
write a method that...
  - takes one positive integer as an argument
  - returns a string of alternating 1s & 0s
    - always starts with 1
  - the integer is the length of the string
  
input: pos integer
output: string

write a method that takes one pos integer argument
  - start a loop
    - break condition: when the array size matches the given integer
    - for each iteration, add '1' to the array
    - for next iteration, add '0' to the array
  - join the array without a space
  
what I learned...
  Integer#times to iterate based on the number indicated by the argument

<further exploration>
Modify stringy so it takes an additional optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

in my words...
  add an optional argument that defaults to 1
  if this optional argument is 0, 0 starts the alternating pattern

=end

# orginal

# def stringy(size, start_num = '1')
#   result = []
#   counter = 0
  
#   loop do
#     break if size == result.size
#     counter.even? ? result << '1' : result << '0'
#     counter += 1
#   end
  
#   result.join
# end

# further

def stringy(size, start_num = 1)
  result = []
  counter = 0
  
  size.times do |index|
    case start_num
    when 1
      number = index.even? ? 1 : 0
    when 0
      number = index.even? ? 0 : 1
    end
  
    result << number
  end
  
  result.join
end

puts stringy(6, 0) #== '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

