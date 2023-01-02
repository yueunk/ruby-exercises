# Modify the method below so that the display/output of items is moved to a block, and its implementation is left up to the user of the gather method.

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield#(items)
  puts "Nice selection of food we have gathered!"
end

gather(items) { puts "#{items.join(', ')}" }

# here is the subtle difference above; I did not parameterize the associated block, and used the same local variable named "items"; using the binding power, the items inside the block references the one initialized on line 3. A better approach would be below...

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end

gather(items) { |produce| puts "#{produce.join(', ')}" }