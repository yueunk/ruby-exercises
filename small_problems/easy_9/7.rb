=begin
Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

input: a string, output: a string
write a method that takes a string argument
- split the string into an array with words
- join the words in reverse order with ', ' as a connector
=end

def swap_name(name)
  name.split.reverse.join(', ')
end
p swap_name('Joe Roberts') == 'Roberts, Joe'