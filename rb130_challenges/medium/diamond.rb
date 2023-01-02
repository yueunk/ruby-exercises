class Diamond # submitted
  def self.make_diamond(letter)
    return "A\n" if letter == "A"

    letters = ("A"..letter).to_a
    width = (letters.size * 2) - 1
    lines = []
    lines << letters.first.center(width)
    inner = 1

    1.upto(letters.size - 1) do |idx|
      line = letters[idx] + (" " * inner) + letters[idx]
      lines << line.center(width)
      inner += 2
    end

    (lines + lines[0...-1].reverse).join("\n") + "\n"
  end
end

# class Diamond # redone
#   def self.make_diamond(letter)
#     letters = ('A'..letter).to_a
#     max_chr = letters.size * 2 - 1
#     inner = ' ' * 1
#     result = []
#     letters.each do |let|
#       if let == 'A'
#         result << 'A'.center(max_chr) + "\n"
#         next
#       end
#       str = "#{let}#{inner}#{let}"
#       result << str.center(max_chr) + "\n"
#       inner << ' ' * 2
#     end
#     result.join + result.reverse[1..-1].join
#   end
# end

