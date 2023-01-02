items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*items, last|
  puts items.join(', ')
  puts last
end
# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |first, *items, last|
  puts first
  puts items.join(', ')
  puts last
end
# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |first, *items|
  puts first
  puts items.join(', ')
end
# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

gather(items) do |item1, item2, item3, item4|
  puts "#{item1}, #{item2}, #{item3}, and #{item4}"
end
# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!

# what i learned...
# This has also shown us a key difference between how arrays are passed as parameters either to a block or a method. When yielded to a block, an array's individual elements will get converted to a list of items if the block parameters call for that conversion(such as when we have parameters like |apples, *assorted|).

# When passing an array to a method, we need to be explicit in how we pass it. If we want to change that array into a list of items, we'll have to do so with the splat operator *. Overall, it seems like using a block was the right way to go, it allows us more flexibility and leaves the implementation of gather to the user.