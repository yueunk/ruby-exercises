=begin
Create a simple tip calculator. 
The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.

ex)
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

in my words...
  - write a program that calculates a tip with a bill amount & a tip rate as inputs
  - then displays both the tip and the total amount of the bill

breakdown...
  - input: floats, output: string

  - write a prompt that asks for a bill amount
  - write a prompt that asks for a tip rate
  - calculate the tip by multiplying the bill amount and the tip rate
  - calculate the total by adding the bill amount and the tip

what I learned...
  - Kernel#format
  - see Ruby-doc for field type characters and flag characters
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_rate = gets.chomp.to_f

tip = bill * tip_rate / 100
total = tip + bill
tip = format("%.2f", tip)
total = format("%.2f", total)

puts "The tip is $#{tip}"
puts "The total is $#{total}"