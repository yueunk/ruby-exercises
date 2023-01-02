=begin
Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

input: an odd integer n, output: display of stars (strings)
you get n number of lines
each line is n-characters long
the outer lines have stars positioned at index 0, 3, 6 (0, middle, -1)
the 2nd to the last outer lines have stars at index 1, 3, 5  (outer stars are positioned inward each line)
all lines have a star in the middle character space
=end

# def star(n)
#   inner = (n - 3) / 2
#   outer = 0
#   loop do
#     puts " " * outer + "*" + " " * inner + "*" + " " * inner + "*" + " " * outer
#     inner -= 1
#     outer += 1
#     break if inner < 0
#   end
  
#   puts "*" * n # half point
  
#   inner = 0
#   outer = (n - 3) / 2
#   loop do
#     puts " " * outer + "*" + " " * inner + "*" + " " * inner + "*" + " " * outer
#     inner += 1
#     outer -= 1
#     break if outer < 0
#   end
# end

# LS solution
def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

p star(7)
