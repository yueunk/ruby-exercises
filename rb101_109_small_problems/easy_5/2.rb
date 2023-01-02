=begin
The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

in my words...
  write a method that takes one integer argument
    - this integer represents time in minutes
      - positive integer means after midnight
      - negative integer means before midnight
    - return the time of day in 24-h format (hh:mm)
  rule: DO NOT USE Date and Time classes

input: integer, output: string

# write a method that takes an integer as an argument
# convert the integer argument, min, to a positive minute within a 24-hour frame
# convert the minute format to hour format
  # every 60 min becomes 1 hour
  
what I learned...
Integer#divmod
Kernel#format
=end

def time_of_day(min)
  min_an_hour = 60
  min_a_day = 24 * min_an_hour
  pos_min = min % min_a_day

  time_hr = (pos_min / min_an_hour).to_s
  time_min = (pos_min % min_an_hour).to_s
  
  time_hr.size == 1 ? time_hr.prepend("0") : time_hr
  time_min.size == 1 ? time_min.prepend("0") : time_min
  
  time_hr + ":" + time_min
end

# second attempt
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(min)
  pos_min = min % MINUTES_PER_DAY
  
  time_hr, time_min = pos_min.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', time_hr, time_min)
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
