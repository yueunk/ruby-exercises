#The following code is flawed. It currently allows @name to be modified from outside the method via a destructive method call. Fix the code so that it returns a copy of @name instead of a reference to it.

class Person # must return a copy of @name, NOT a reference to it
  def initialize(name)
    @name = name
  end
  
  def name
    @name.dup
  end
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name #James

# LS answer uses #clone; what's the difference between #clone and #dup?

#In general, clone and dup may have different semantics in descendant classes. While clone is used to duplicate an object, including its internal state, dup typically uses the class of the descendant object to create the new instance. When using dup, any modules that the object has been extended with will not be copied. (ruby_doc)

# in my words... #clone is a deep copy, #dup is a shallow copy (modules the object extended with aka internal state are not copied)