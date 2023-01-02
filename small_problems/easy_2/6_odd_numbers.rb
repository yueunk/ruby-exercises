=begin
Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

in my words...
  - print all odd numbers between 1 - 99 (including the outer ends)
  - each number should be on a new line
  
breakdown...
  - input: integer, output: integer

  - write a method that puts all odd numbers
    - the range of numbers: 1- 99, inclusive
    - print each number on a new line
    
what I learned...
  - Integer#upto
    - first_num.upto(last_num) block

=end

# using Integer#odd?
(1..99).each { |n| puts n if n.odd? } 

# using Integer#upto
1.upto(99) { |n| puts n if n.odd? }

# using Array#select
odd_num = (1..99).to_a.select { |n| n.odd? }
puts odd_num 
