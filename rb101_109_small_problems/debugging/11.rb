# Josh wants to print an array of numeric strings in reverse numerical order. However, the output is wrong. Without removing any code, help Josh get the expected output.
require 'pry'
arr = ["9", "8", "7", "10", "11"]
p arr.sort { |x, y| y.to_i <=> x.to_i }

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

# due to Roby's precedence rules, #p and arr.sort bind more tightly when do...end block is passed in as an argument; use braces to overrule that precedence rule or parenthese around the method invocation and the block (not covered very well in the documentation)