# write a method that changes the first arithmetic operator in a string to a '?' and returns the resulting string
# do not mutate the original object
def mystery_math(equation)
  equation.sub(/[\+\-\*\/]/, '?')
end
p mystery_math('4 + 3 - 5 = 2')
# -> '4 ? 3 - 5 = 2'

p mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# -> '(4 ? 3 + 2) / 7 - 1 = 1'