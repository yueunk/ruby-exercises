=begin

Write a method that counts the number of occurrences of each element in a given array.

- in my words...
  - write a method that takes an array argument
  - in a given array, count how many times each element occurs

- input: array; output: integer; intermediate: hash?

- write a method that takes an array argument
    ### hint: Array#count(specific_word)
  - create a hash to store the current values
  - for each element, count how many times it appears in the array
    - use #count
  - store the element and the integer in a hash
  - print the key-value in a string form

- further exploration: case insensitive
  - turn each element to downcase

=end

vehicles = [
  'car', 'CAR', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  result = {}
  arr.map! { |elem| elem.downcase } # => further exploration
  
  arr.uniq.each do |x|
    result[x] = arr.count(x)
  end
  
  result.each do |x, n|
    puts "#{x} => #{n}"
  end
end

p count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

