# Write a minitest assertion that will fail if value.downcase does not return 'xyz'.

assert_equal('xyz', value.downcase) # #assert_equal uses #== to compare two arguments, where the 1st argument is the caller of #== and the 2nd argument is the argument passed in to #==