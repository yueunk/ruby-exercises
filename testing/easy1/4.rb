# Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. The return value can be in any sequence you wish.
=begin
- input: integer, output: an array of integers
- the output array includes all divisors of the given integer

- iterate through a range of integers from 1 to the given integer
- if the number is divisible by the current integer, push to the result array
- return the result array
=end

require 'time'

def time_this
  start = Time.now
  yield
  finish = Time.now
  puts "#{finish - start} seconds"
end

# brute force; 8.541589773 seconds
def divisors(n)
  (1..n).each_with_object([]) do |int, result|
    result << int if n % int == 0
  end
end

# further - reduce time; 0.001267537 seconds
def divisors(n)
  result = []
  (1..n).each do |int|
    break if result.include?(n / int)
    result.concat([int, n / int]).uniq! if n % int == 0
  end
  result.sort!
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

time_this { divisors(99400891) }

# review during 139
def divisors(n)
  result = []
  (1..n).each do |divisor|
    break if result.include?(divisor)
    a, b = n.divmod(divisor)
    result.concat([divisor, a]) if b.zero?
  end
  result.uniq.sort
end