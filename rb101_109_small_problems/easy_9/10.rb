=begin 
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

input: nested array, output: array
- write a method that takes a grocery list array
  - for each subarray, 
- convert the array of the correct number of each fruit

what I learned...
[item] * 3 will give three of that element
item * 3 will give a longer string that has item appended
=end
require 'pry'
def buy_fruit(grocery_list)
  grocery_list.each_with_object([]) do |item, grocery_bag|
    item[1].times { |n| grocery_bag << item[0] }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  