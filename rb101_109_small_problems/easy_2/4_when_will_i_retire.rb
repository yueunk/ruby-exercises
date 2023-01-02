=begin
Build a program that displays when the user will retire and how many years she has to work till retirement.

ex)
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

in my words...
  - write a program that displays when the user will retire & the years left til retirement

breakdown...
  - input: integers, output: string

  - write a prompt asking the user's age
  - write a prompt asking the age the user wishes to retire
  - calculate the year of retirement (by adding the years left to the current year) and display a string
  - calculate how many years left and display a string

what I learned...
  - Time class from the ruby core library
  - chained Time#now and Time#year to get the current year
=end

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
age_retire = gets.chomp.to_i

year_now = Time.now.year

years_left = age_retire - age
year_retire = year_now + years_left

puts "It's #{year_now}. You will retire in #{year_retire}."
puts "You have only #{years_left} years of work to go!"