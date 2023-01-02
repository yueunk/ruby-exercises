=begin
- create a story template with blanks for words (the game mad-libs...?)
- prompts include: a noun, verb, adverb, and adjective.

what I learned...
make more than one sample answer, and randomly pick on by calling the sample method on the array of sample answers

LS tip:
- Another option here, one that is a bit more complicated, would be to read in a text file. Then, we could use String#format to interpolate our noun, verb, adjective, and adverb into this file.
=end

print "Enter a noun: "
noun = gets.chomp
print "Enter a verb: "
verb = gets.chomp
print "Enter an adjective: "
adjective = gets.chomp
print "Enter an adverb: "
adverb = gets.chomp
puts ''
puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!