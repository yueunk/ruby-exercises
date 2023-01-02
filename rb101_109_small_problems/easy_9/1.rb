=begin
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

- write a method that takes two arguments - an array, a hash
  - the array will contain...
    - two or elements 
  - the hash will contain...
    - two keys, :title & :occupation, with associated values
  - that returns a greeting that...
    - uses the person's full name
    - mentions the person's title and occupation
    
input: array and hash, output: string

=end
def greetings(name_array, job_hash)
  full_name = name_array.join(' ')
  job = job_hash.values.join(' ')
  "Hello, #{full_name}! Nice to have a #{job} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.