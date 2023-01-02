# frozen_string_literal: true

# This program converts an octal to its decimal equivalent.
class Octal
  def initialize(octal)
    @octal = octal
  end

  def to_decimal
    return 0 if invalid?(@octal)

    power = @octal.size
    @octal.chars.map do |digit|
      power -= 1
      digit.to_i * (8**power)
    end.sum
  end

  private

  def invalid?(input)
    input.match?(/[^0-7]/)
  end
end
