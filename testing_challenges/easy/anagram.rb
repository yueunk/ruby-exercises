# frozen_string_literal: true

# This program finds anagrams that are not identical to the given string.
class Anagram
  def initialize(str)
    @str = str.downcase
  end

  def match(arr)
    arr.select do |word|
      word = word.downcase
      @str != word && @str.chars.sort == word.chars.sort
    end
  end
end
