# This program converts a given word to its scrabble points.
class Scrabble
  POINTS = { 1 => %w[A E I O U L N R S T],
             2 => %w[D G],
             3 => %w[B C M P],
             4 => %w[F H V W Y],
             5 => %w[K],
             8 => %w[J X],
             10 => %w[Q Z] }.freeze
  
  def self.score(word)
    Scrabble.new(word).score
  end
  
  def initialize(word)
    @word = word
  end
  
  def score
    result = 0
    return result if @word.nil?
    @word.upcase.chars.map do |chr|
      POINTS.each do |point, arr|
        result += point if arr.include?(chr)
      end
    end
    result
  end
end
