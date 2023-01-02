=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

in my words...
  - write a method that takes a string argument
    - that returns a NEW string with a modification to the original value
      - any consecutive duplicate characters in a string should be collapsed into a single character
  - rule: do NOT use String#squeeze or its destructive version
  
input: string, output: a new string
  - write a method that takes a string argument
    - somehow check for consecutive duplicate characters
      - delete the duplicates
    - return the new string
    
=end

def crunch(str)
  new_str = ''
  
  str.chars.each do |chr|
    new_str << chr unless chr == new_str[-1]
  end

  new_str
end

# using regex
def crunch(str)
  str.gsub(/(\w)\1+/, '\1')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''