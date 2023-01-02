=begin
in my words... modify the previous method
  - concerning only letters when alternating up/downcases

further...
  - add a second argument for whether or not to include non-letter characters for upper/lowercase alternation
=end

require 'pry'
def staggered_case(string, letter_only = true)
  result = ''
  need_upper = true
  if letter_only
    string.chars.each do |char|
      if /[a-z]/i =~ char
        if need_upper
          result += char.upcase
        else
          result += char.downcase
        end
        need_upper = !need_upper # alternating the boolean value
      else
        result += char
      end
    end
    
  else
    string.chars.each do |char|
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper # alternating the boolean value
    end
  end

  result
end

p staggered_case('I Love Launch School!', false) #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'