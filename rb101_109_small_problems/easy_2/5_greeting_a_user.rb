=begin
Write a program that will ask for user's name.
The program will then greet the user.
If the user writes "name!" then the computer yells back to the user.

ex)
    What is your name? Bob
    Hello Bob.
    
    What is your name? Bob!
    HELLO BOB. WHY ARE WE SCREAMING?

in my words...
  - write a program that greets the user in two ways
    - when the user types their name - it greets normally
    - when the user types their name followed by ! - it greets LOUNDLY

breakdown...
  - input: string, output: string

  - write a prompt asking the user's name
    - if the name ends with !, display a greeting message with all caps with some screams
    - otherwise, display a greeting message in a normal manner
    
what I learned...
  - String#chop: unconditionally removes the last character of a string
  - String#chomp: conditionally removes the tail end of a string, defaulting to a newline
  - string is also an indexed data -- can located the last character by using [-1], instead of using #end_with?

=end

print "What is your name? "
name = gets.chomp
if name.end_with?("!")
  name = name.chop.upcase
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  name = name.capitalize
  puts "Hello #{name}."
end