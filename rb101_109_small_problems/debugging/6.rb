def move(n, from_array, to_array)
  if n == 1
    to_array << from_array.shift
  else
    to_array << from_array.shift
    move(n - 1, from_array, to_array)
  end
end

#LS answer
def move(n, from_array, to_array) # my answer is redundance with regards to when n == 1
  return if n <= 0 # <= is better than == so that it can handle a negative integer argument
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(-2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# We wrote a method for moving a given number of elements from one array to another. We decide to test it on our todo list, but invoking move on line 11 results in a SystemStackError. What does this error mean and why does it happen?

# question before solving: what is the first parameter of the move method? -- first two items of todo
# moving a "given number of elements" from todo array to done array

# SystemStackError is regarding the recursive method, on which the method calls itself
# there are three primary qualities of recursion, one of which concerning the break condition for the recursion; inside the method definition, there's no n value where the recursion stops going "deep"