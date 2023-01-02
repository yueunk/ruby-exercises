# Write a minitest assertion that will fail if value is not nil.

assert_nil(value) # success if value is nil; fails if value is not nil

# see https://docs.ruby-lang.org/en/2.0.0/MiniTest/Assertions.html for the list of minitest assertions

assert_equal(nil, value)
# this also works, but #assert_not_nil provides a clear failure message for this case