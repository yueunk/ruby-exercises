=begin
Write a method that will take a short line of text, and print it within a box.

in my words...
  - write a method that takes one string argument
  - print the string with a box boundary
  
input: string, output: string
  - write a method that takes a string argument
  - using the puts method, type the default boundary (4 character by 5 character)
  - get the length of the string
  - insert that many dashes on the horizontal boundaries
=end

def print_in_box(str)
  dashes = '-' * str.length
  spaces = ' ' * str.length
  puts "+-#{dashes}-+"
  puts "| #{spaces} |"
  puts "| #{str} |"
  puts "| #{spaces} |"
  puts "+-#{dashes}-+"
end

# further exploration 1 - truncate the str so that it fits 
=begin
80 columns max, which means str length max is 76.
=end

def box(str)
  dashes = '-' * str.length
  spaces = ' ' * str.length
  puts "+-#{dashes}-+"
  puts "| #{spaces} |"
  puts "| #{str} |"
  puts "| #{spaces} |"
  puts "+-#{dashes}-+"
end

def print_in_box(str)
  return box(str) unless str.length > 76
  puts "Warning: the message has been shortened to 76 characters to fit the box"
  str = str.partition(/^.{76}/)[1]
  box(str)
end

hellos = "hello" * 10
print_in_box(hellos)

# further exploration 2 - word wrap... will have to revisit...