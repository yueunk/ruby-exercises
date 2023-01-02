# 2 arguments (short & long string)
# concatenate short long short after determining the long string

def short_long_short(a, b)
  a.size > b.size ? (b + a + b) : (a + b + a)
end

p short_long_short('hi', 'hello') =='hihellohi'

# what I learned...
# - this can be done using interpolation (need to clarify what it is... something to do with a placeholder and replacement mechanism)
# - what's done above is concatenation, the act of combining two strings into one using the + sign