=begin
in my words...
  - write a method that takes one String argument
    - that returns a NEW String
      - that contains the original value with staggered capitalization
        - in which every other character is capitalized (upcase first)
=end

# def staggered_case(str)
#   staggered_arr = []
#   str.chars.each_with_index do |chr, idx|
#     if idx.even?
#       staggered_arr << chr.upcase
#     else
#       staggered_arr << chr.downcase
#     end
#   end
#   staggered_arr.join
# end


# further exploration - modify LS answer so downcase first then upcase
def staggered_case(string, upcase = true) # wording... use a keyword (aka true) argument (aka the upcase param)
  result = ''
  upcase ? need_upper = true : need_upper = false # added for further
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper # alternating the boolean value
  end
  result
end

p staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', false) #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', false) #== 'IgNoRe 77 ThE 444 NuMbErS'