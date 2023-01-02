#add an instance method named #rename that renames kitty when invoked.
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def rename(new_name) # renaming by reassiging the setter method #name to an argument passed in
    self.name = new_name # self is to let Ruby know you are not creating a local variable "name"; here self references the calling object
  end
end

kitty = Cat.new('Sophie')
p kitty.name
kitty.rename('Chloe')
p kitty.name