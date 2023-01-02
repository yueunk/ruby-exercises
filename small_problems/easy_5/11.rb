=begin
You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

in my words...
  - here's a method that takes one string argument
  - it returns a string with the same words, but each word's characters reversed
  
  - will the returned string be the same object as the one passed in as an argument or a different object?
    - same object as the one passed in <-- this means mutation
    - different objects <-- this means reassignment inside the method definition
=end

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# At method invocation, the str parameter is assigned to a string object "hello world". Inside the method definition, the split method splits its caller and an array with each word as an element, which then is called on by the each method. The do..end block following the each method invocation takes a word parameter, which is called on by the destructive reverse! method. Since this was performed on each word of the array, not on the string itself, the return value of the spin_me method is a different object.

# LS answer summary for clarity
# We are using mutating method String#reverse! inside of the do..end block, and we are also calling each method on the resulting array, which also returns the original array.

# As soon as we have converted string into an array by calling split method on it, it is no longer possible for us to get back the original object again. Even str.split.join(" ") will return a different object as it joins the array back into a NEW string.

# inside the spin_me method... str.split converts the string into array ['hello', 'world']. When we call each method on this array and reverse each word inside of the array, our original array gets mutated and not its values are ['olleh', 'dlrow'].

# so we have mutated the array that we got by splitting the string, but, when we join this array back into a string, a completely new string is returned.

def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
p arr.object_id
p spin_me(arr).object_id
p arr.object_id

# however, the above code where array is passed in as an argument and its elements mutated, the object_id proves that the return value is the same object as the one passed in as an argument.