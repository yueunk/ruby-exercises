=begin
Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

in my words...
  - print all even numbers between 1 - 99 (including the outer ends)
  - each number should be on a new line
  
breakdown...
  - input: integer, output: integer

  - write a method that puts all even numbers
    - the range of numbers: 1- 99, inclusive
    - print each number on a new line
    
what I learned...
  - Integer#upto
    - first_num.upto(last_num) block

=end

# using Integer#even?
(1..99).each { |n| puts n if n.even? } 

# using Integer#upto
1.upto(99) { |n| puts n if n.even? }

# using Array#select
even_num = (1..99).to_a.select { |n| n.even? }
puts even_num 
