# write a method that returns all of the fileds in a haphazrdly formatted string
# a variety of spaces, tabs, and commas separate the fileds, with possibly multiple occurrences of each delimiter

def fields(text)
  text.split(/[,\t ]+/)
end

p fields("Pete,201,Student")
# -> ["Pete", "201", "Student"]

p fields("Pete \t 201    ,  TA")
# -> ["Pete", "201", "TA"]

p fields("Pete \t 201")
# -> ["Pete", "201"]

p fields("Pete \n 201")
# -> ["Pete", "\n", "201"]