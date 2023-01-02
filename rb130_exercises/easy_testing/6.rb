# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.

# wrong: assert_raises(NoExperienceError, employee.hire)
# #assert_raises takes at least 0 argument and a block

assert_raises(NoExperienceError) { emplyee.hire }
# does the given block return an error?


