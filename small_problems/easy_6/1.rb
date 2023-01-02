=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

in my words...
  - write a method that takes a Float between 0-360 as an argument
    - that returns a String that represents that angle in degrees, minutes('), and seconds(")
    - 1 degree has 60 min
    - 1 min has 60 seconds

input: float, output: string
  - write a method that takes a float
  - get the value of dms by chaining divmod on the float
  - format the string so that d and s shows two digits


what I learned... 
  - %w() for array, %() for string
  - format(format_string [, arguments...] ) → string
    - %[flags][width][.precision]type for formatting
  - using constants, show the breakdown of 3600
  - use more descriptive name for local variables
=end

# [:ascii:]	ASCII characters	[\x00-\x7F] (see bookmark on chrome)

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE =  MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   return "invalid float" unless degrees_float >= 0 && degrees_float <= 360

#   degrees_in_seconds = degrees_float * SECONDS_PER_DEGREE
#   remaining_minutes, s = degrees_in_seconds.divmod(SECONDS_PER_MINUTE)
#   d, m = remaining_minutes.divmod(MINUTES_PER_DEGREE)
#   format(%(#{d}#{DEGREE}%02d'%02d"), m, s)
# end

# further exploration
# modify the code so it returns a value in the appropriate range when the input is less than 0 or greater than 360?
require 'pry'

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE =  MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  degrees_float %= 360 if degrees_float < 0 || degrees_float > 360
  degrees_in_seconds = degrees_float * SECONDS_PER_DEGREE
  remaining_minutes, s = degrees_in_seconds.divmod(SECONDS_PER_MINUTE)
  d, m = remaining_minutes.divmod(MINUTES_PER_DEGREE)
  format(%(#{d}#{DEGREE}%02d'%02d"), m, s)
end

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")

p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")