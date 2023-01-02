=begin
in my words...
- write a method that takes one Array argument
  - the array contains integers
  - it returns a string, containing a float with three decimal points that represents the multiplication of all integers divided by the array size
    - use format to format the decimal points

input: array of integers, output: string with interpolated float
- write a method that takes one array argument
  - multiply all integers (how?) and divide that by array#size
  - format the above
  - return a string
  
=end
# def multiply(num_arr) # this could be done by #inject(symbol)
#   multiplied = 1.0
#   num_arr.each do |num|
#     multiplied *= num
#   end
#   multiplied
# end

# def show_multiplicative_average(arr)
#   result = multiply(arr) / arr.size
#   format("%0s %0.3f", "The result is", result)
# end


def show_multiplicative_average(arr)
  product = 1.to_f
  product = arr.inject(:*)
  avg = product / arr.size
  puts "The result is #{format('%.3f', avg)}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667