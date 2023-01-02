# # my first attempt
# class TextAnalyzer
#   def process
#     sample_text = File.new('2.txt')
#     yield(sample_text.read)
#   end
# end

# analyzer = TextAnalyzer.new
# p analyzer.process { |text| "#{text.scan(/\n\n/).count + 1} paragraphs" } # 3 paragraphs
# p analyzer.process { |text| "#{text.scan(/\n/).count + 1} lines" } # 15 lines
# p analyzer.process { |text| "#{text.scan(/\b\w+\b/).count} words" } # 126 words

# # LS answer -- recall the lesson on sandwich code -- open, process, close
# class TextAnalyzer
#   def process
#     sample_text = File.open('2.txt', 'r') # see IO modes; 'r' is for read-only
#     yield(sample_text.read)
#     sample_text.close # last step of a sandwich
#   end
# end

# analyzer = TextAnalyzer.new
# # no use of #scan; add #puts
# analyzer.process { |text| puts "#{text.split(/\n\n/).count} paragraphs" } # 3 paragraphs
# analyzer.process { |text| puts "#{text.split(/\n/).count} lines" } # 15 lines
# analyzer.process { |text| puts "#{text.split(" ").count} words" } # 126 words

# # what I learned...
# # File::new and File::open are a synonym if no block given (::open can take a block, and when the block is done executing, the file closes)
# # String#split also takes a regex as an argument

# during rb139 redo
class TextAnalyzer
  def process
    File.open('2.txt', 'r') { |file| yield(file.read) }
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" } # 3 paragraphs
analyzer.process { |text| puts "#{text.split("\n").count} lines" } # 15 lines
analyzer.process { |text| puts "#{text.split(' ').count} words" } # 126 words