# Write a minitest assertion that will fail if the value.odd? is not true.

assert(value.odd?, 'value is not odd') # tests if the 1st argument is truthy; the 2nd argument is the error msg displayed when fails (the fail context for #assert is not sufficient so this msg is useful)

# or
assert_equal(true, value.odd?) # this is used more commonly as it tests for an exact expected return value (1st arg; the value true, not all truthy values) that is compared to the actual value (2nd arg)
