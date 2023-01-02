=begin

# 1. 
File::path vs. File#path
- :: class method
  - called on the class
- # instance method
  - called on objects

# 2.  
The require statement imports 'date' from the standard library
[] denotes optional -- the nested brackets show the precedence of omission
Date::civil and Date::new result in the same thing

# 3. 
Default Positional Arguments
https://ruby-doc.org/core-2.5.0/doc/syntax/calling_methods_rdoc.html

# 4.
Array#bsearch (binary search algorithm)
- bsearch { |x| block } --> elem
- this method only takes one argument that's a block & returns an element

# 5.
Array#fetch
- fetch(index) --> obj; can raise an IndexError
- fetch(index, default) --> obj
- fetch(index) { |index| block } --> obj
- note that the multi-lined signature shows optional arguments
- #fetch vs. #[]: #fetch does bounds checking (check if exists) 
  - the 2nd and 3rd forms of #fetch prevent an error from occurring
  
# 6.
- Numeric is the superclass of all numeric types - including Integer and Float
- Math is a module that supplies a lot of number crunching functionality
- the argument :by is a "step" value & :to isa limit

# 7.
Parent Class
- Subclass's particular method CAN override the superclass method -- always check subclass first
  - ex) tring overrides Object#==
- Ruby doc left side shows the parent class

# 8.
Included Modules
- #min is not found under Array or its superclass Object
  - Ruby uses mix-in modules (instead of multiple inheritance, MI, where a class can inherit from two or more immediate superclasses)
  - mix-ins provide a way for classes of different types to share behaviors without using inheritance
- Enumerable module: a common mix-ins!! (check the left side for "Included Module")
  - Array, Hash, Range
  
# 9.
Down the Rabbit Hole
- consult Psych class when working with YAML files!
=end

