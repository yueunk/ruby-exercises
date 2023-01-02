=begin
in my words...
  - revise the method so that the leap years prior to 1752 are properly checked -- that is every year divisible by 4
=end

def leap_year?(year)
  return true if (year < 1752) && (year % 4 == 0)
  return true if (year % 4 == 0) && (year % 100 != 0)
  return true if (year % 400 == 0)
  return false
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true