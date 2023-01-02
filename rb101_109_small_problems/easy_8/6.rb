=begin
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

in my words...
  - write a method that takes two integer arguments (a, b)
    - first integer is the starting num, second the ending num (a..b)
    - that prints all numbers of the range
      - replace those divisible by 3 with the word "Fizz"
      - replace those divisible by 5 with the word "Buzz"
      - replace those divisible by both 3 and 5 with the word "FizzBuzz"

input: two integers, output: string
  - write a method that takes two integer arguments
  - store in an array each number with the range created by the two arguments
    - replace 3 & 5 divisibles with "FizzBuzz"
    - replace 3 divisibles with "Fizz"
    - replace 5 divisibles with "Buzz"
  - print the elements of the array

what I learned...
  - case statement can be used without a value next to it for comparison, just like if/elsif/else conditional
  - case statement returns the value from the last line of the matched when branch
=end

# def fizzbuzz(a, b)
#   result = []
#   a.upto(b) do |num|
#     if num % 3 == 0 && num % 5 == 0
#       result << "FizzBuzz"
#     elsif num % 3 == 0
#       result << "Fizz"
#     elsif num % 5 == 0
#       result << "Buzz"
#     else
#       result << num
#     end
#   end
#   puts result.join(', ')
# end

#LS way -- incorporating fizzbuzz_value(num) method

def fizzbuzz(a, b)
  result = []
  a.upto(b) do |num|
    result << fizzbuzz_value(num)
  end  
  puts result.join(', ')
end

def fizzbuzz_value(num)
  case
  when num % 5 == 0 && num % 3 == 0
    "Fizzbuzz"
  when num % 5 == 0
    "Buzz"
  when num % 3 == 0
    "Fizz"
  else
    num
  end
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz