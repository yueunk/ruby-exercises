=begin
What will the following code print, and why? Don't run the code until you have tried to answer.

ex)
    array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
    array2 = []
    array1.each { |value| array2 << value } # array2 is mutated
    array1.each { |value| value.upcase! if value.start_with?('C', 'S') } # this mutates array1's elements; how does this affect array2's elements?
    puts array2

what I learned...
  - after line 7, array1 and array2 both contain the same String objects
    - if you modify one of those Strings (not Arrays), the modification will show up in both Arrays.
  - #object_id can tell you whether each element and its copies residing in a different array have the same object_id
    - in fact, they share the same object_id, while the arrays themselves don't
=end
