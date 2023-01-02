# Write a test that will fail if 'xyz' is one of the elements in the Array list:

# assert_includes(list, 'xyz') succeeds if 'xyz' is included in the list

refute_includes(list, 'xyz')
# fails if the same condition as #assert_includes met
# most minitest assertions have a corresponding refutation method