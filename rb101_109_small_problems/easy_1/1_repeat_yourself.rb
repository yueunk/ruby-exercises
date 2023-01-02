=begin

PROBLEM
- Write a method that takes two arguments, a string & a positive integer, and prints the string as many times as the integer indicates
- in my words...
  - write a method that takes two arguments
    - string + POSITIVE integer (n) # check for valid arguments
  - print the string n times
  
- input: method with two arguments - string & integer (pos)
- output: string

ALGO
- define a method called repeat that takes two arguments - sentence, n
- check if the inputs are valid
  - if not, return an error message
  - print the sentence n times somehow...
  
EXAMPLE
- repeat('Hello', 3)

=end

def repeat(string, number)
  number.times { |_| puts string }
end

repeat('hello', 3)