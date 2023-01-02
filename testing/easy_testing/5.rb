# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.

# will succeed if 'xyz' IS in the Array
list = ['xyz']
assert_includes(list, 'xyz')

# this can also work but not better
assert_equal(true, list.include?('xyz'))