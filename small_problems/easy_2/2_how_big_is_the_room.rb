=begin
Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

what I learned....
  for clarity of the conversion, use a contant; SQMETERS_TO_SQFEET = 10.7639
  Kernel#format is available (though harder to use) instead of using Float#round

=end

puts "=> Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "=> Enter the width of the room in meters:"
width = gets.chomp.to_f
area = (length * width).round(2)
sqft = (area * 10.7639).round(2)
puts "The area of the room is #{area} square meters (#{sqft} square feet)."

# Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

SQFT_TO_SQIN = 144
SQFT_TO_SQCM = 929.03

puts "=> Enter the length of the room in feet:"
length = gets.chomp.to_f
puts "=> Enter the width of the room in feet:"
width = gets.chomp.to_f
area_sqft = (length * width).round(2)
area_sqin = (SQFT_TO_SQIN * area_sqft).round(2)
area_sqcm = (SQFT_TO_SQCM * area_sqft).round(2)
puts "The area of the room is #{area_sqft} square feet (#{area_sqin} sqaure inches; #{area_sqcm} square centimeters)."