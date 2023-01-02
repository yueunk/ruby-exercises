# Write a minitest assertion that will fail if value is not an instance of the Numeric class exactly. value may not be an instance of one of Numeric's superclasses.

assert_instance_of(Numeric, value)

# recall Object#instance_of checks if the caller is an instance (not through inheritance) of a class, whereas #is_a checks if the caller is an object of the class type including via inheritance