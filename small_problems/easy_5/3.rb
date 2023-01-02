=begin
Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

in my words...
- write two methods
  - each takes a string as an argument
  - each returns a positive integer (ranging from 0 to 1439) representation of time in minute format
  - after_midnight method returns the number of minutes AFTER midnight
  - before_midnight method returns the number of minutes BEFORE midnight
 
 input: string, output: integer
 - write a method that takes a string argument
  - break up the string argument into two elements, hour and minute, convert them to integer
  - convert the hour into minutes and add to the existing minute local variable
    - AFTER: return the value
    - BEFORE: return 1440 - value
=end

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR # 1440

# def after_midnight(time)
#   hour, minutes = time.split(':').map(&:to_i)
#   min_time = hour * MINUTES_PER_HOUR + minutes
#   min_time == 1440 ? 0 : min_time
# end

# def before_midnight(time)
#   hour, minutes = time.split(':')
#   min_time = MINUTES_PER_DAY - (hour.to_i * MINUTES_PER_HOUR + minutes.to_i)
#   min_time == 1440 ? 0 : min_time
# end

# second attempt
def after_midnight(time)
  hour, minutes = time.split(':').map(&:to_i)
  (hour * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time)
  hour, minutes = time.split(':').map(&:to_i)
  (MINUTES_PER_DAY - (hour * MINUTES_PER_HOUR + minutes)) % MINUTES_PER_HOUR
end

p after_midnight('00:00') == 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') == 0

# further -- here must require 'time' as it's not Ruby's core API
# what I learned... Time#parse
require 'time'
MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def before_midnight(string)
  offset = (Time.parse(string).hour * MINUTES_PER_HOUR) + Time.parse(string).min
  offset == 1440 || offset == 0 ? 0 : MINUTES_PER_DAY - offset
end

def after_midnight(string)
  (Time.parse(string).hour * MINUTES_PER_HOUR) + Time.parse(string).min
end
