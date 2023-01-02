=begin
Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

in my words...
  - only select the palindrome substrings from the previously returned array
   - palindrome: must read forward and backward the same including symbols. single letter is not considered a palindrome

=end

def substrings(str)
  result = []
  0.upto(str.size - 1) do |n|
    n.upto(str.size - 1) do |idx|
      result << str[n..idx]
    end
  end
  result
end

def palindromes(str)
  substrings(str).select { |substr| (substr == substr.reverse) && (substr.size > 1) }
end

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]