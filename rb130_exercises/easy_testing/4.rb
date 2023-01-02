# Write a minitest assertion that will fail if the Array list is not empty.

# success if list is empty
list = []
assert_empty(list)

# this also works, but the former is clearer and issues a better failure message
assert_equal(true, list.empty?)