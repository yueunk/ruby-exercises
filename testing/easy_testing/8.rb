# Write a minitest assertion that will fail if the class of value is not Numeric or one of Numeric's subclasses (e.g., Integer, Float, etc).

assert_kind_of(Numeric, value)
# Object#kind_of? is used; #kind_of? and #is_a? are aliases