=begin
challenge: what data structure to use
make a madlibs program that reads in some text from a text file that you have created
then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it. You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text datat should come from a file or other external source. Your program should read this text, and for each line, it should place random words of the appropriate tpes into the text, and print the result

what i learned
Kernel#format placeholders use %{name}
interpolation uses #{name}
=end

def madlibs(text)
  words = { '%{adjective}' => %w(quick lazy sleepy ugly),
          '%{noun}' => %w(fox dog head leg),
          '%{verb}' => %w(jumps lifts bites licks),
          '%{adverb}' => %w(easily lazily noisily excitedly)
        }
  words.each do |key, value|
    text.gsub!(key, value.sample)
  end
  text
end
text = File.read('1.txt')
p madlibs(text)

# Example -- 1.txt
# The %{adjective} brown %{noun} %{adverb}
# %{verb} the %{adjective} yellow
# %{noun}, who %{adverb} %{verb} his
# %{noun} and looks around.

# Example replacement words
# adjectives: quick lazy sleepy ugly
# nouns: fox dog head leg
# verbs: jumps lifts bites licks
# adverb: easily lazily noisily excitedly
