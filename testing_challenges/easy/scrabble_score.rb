# frozen_string_literal: true

# This program converts a given word to its scrabble points.
class Scrabble
  POINTS = { 1 => %w[A E I O U L N R S T],
             2 => %w[D G],
             3 => %w[B C M P],
             4 => %w[F H V W Y],
             5 => %w[K],
             8 => %w[J X],
             10 => %w[Q Z] }.freeze

  def initialize(str)
    @str = str
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    return 0 if @str.nil? || @str.scan(/[a-zA-Z]/).empty?

    @str.chars.map do |chr|
      to_point(chr.upcase)
    end.sum
  end

  private

  def to_point(letter)
    val = POINTS.values.select do |value|
      value.include?(letter)
    end.flatten
    POINTS.key(val)
  end
end
