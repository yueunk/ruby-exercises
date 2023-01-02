=begin
Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

input: integer (year > 1752), output: integer
write a method that takes one integer argument
the method returns the number of Fri the 13th in that year
# check all 13ths of the year (12 of them)
# how many of those are fridays? return that value

hints:
Ruby's Date class may be helpful here.
Look at how to initialize a Date object
Look at the friday? method
=end

require 'date'
require 'pry'
def friday_13th(year)
  months = (1..12).to_a
  count = 0
  months.each do |month|
    count += 1 if Date.new(year, month, 13).friday?
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2