=begin
Q. Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

in my words...
  - write a method that takes one integer method
    - that searches for all multiples of 3 or 5
    - in a range between 1 and the input
    - then returns the sum of all the numbers found

input: integer, output: integer
  - write a method that takes one integer method
    - create an empty array to store multiples of 3 or 5 found
    - for all the multiples of 3 up to the input integer, push them to the array
    - same for multiples of 5
    - add the values in the array
    - return the sum
    
what I learned... 
  - Integer#upto that takes a block -- a great way to iterate through a range without using (n..m) notation...
  - Enumberable#reduce can be used to solve this
  - Range#each (from student answers)
=end

def multisum(n)
  multiples = []
  
  n_multiple_three = n / 3
  loop do
    break if n_multiple_three == 0
    multiples << n_multiple_three * 3
    n_multiple_three -= 1
  end
  
  n_multiple_five = n / 5
  loop do
    break if n_multiple_five == 0
    multiples << n_multiple_five * 5
    n_multiple_five -= 1
  end

  multiples.uniq.sum
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# LS solution - good readability
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

# Student answer (further exploration)
def multisum(num)
  multiples = []

  (1..num).each { |n| multiples << n if n % 3 == 0 || n % 5 == 0 }

  multiples.inject { |sum, n| sum += n }
end
