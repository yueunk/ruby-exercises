=begin
in my words...
  - write a method that takes one string argument
    - that returns a NEW string
      - in which every uppercase letter is replaced by its lowercase version, vice versa
  - do not use String#swapcase
  
input: string, output: new string
  - iterate through each character of words
  - if upcase, replace with its downcase version
  - vice versa
  - return a new string
=end

def swapcase(str)
  str.chars.map do |chr|
    if /[a-z]/ =~ chr
      chr.upcase
    elsif /[A-Z]/ =~ chr
      chr.downcase
    else
      chr
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'