# wrtie a method that returns true if its arguments looks like a URL
# url starts with either http:// or https://
# url ends before the first encounter of whitespace

# can use #match?

def url?(url)
  url =~ /^https?:\/\/\S*$/ ? true : false
end
p url?('http://launchschool.com')   # -> true
p url?('https://example.com')       # -> true
p url?('https://example.com hello') # -> false
p url?('   https://example.com')    # -> false