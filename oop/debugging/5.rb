class File
  attr_accessor :name, :byte_content

  def initialize(name)
    @name = name
  end

  alias_method :read,  :byte_content
  alias_method :write, :byte_content=

  def copy(target_file_name)
    target_file = self.class.new(target_file_name)
    target_file.write(read)

    target_file
  end

  def to_s
    "#{name}.#{self.class::FORMAT}"
  end
end

class MarkdownFile < File
  FORMAT = :md
end

class VectorGraphicsFile < File
  FORMAT = :svg
end

class MP3File < File
  FORMAT = :mp3
end

# Test

blog_post = MarkdownFile.new('Adventures_in_OOP_Land')
blog_post.write('Content will be added soon!'.bytes)

copy_of_blog_post = blog_post.copy('Same_Adventures_in_OOP_Land')

puts copy_of_blog_post.is_a? MarkdownFile     # true
puts copy_of_blog_post.read == blog_post.read # true

puts blog_post

# we get an error message for uninitialized constant FORMAT. due to the lexical scope of a constant variable, Ruby starts by looking at the enclosed method when the constant is called. in our example, the enclosed method to_s is an instance method defined in a File class, however, the FORMAT constant is initialized in the subclasses of File. Therefore we need to call the constant by prepending self.class:: in order to locate where FORMAT was initialized. Here, self references the calling object blog_post, thus when we call the class method on the calling object, we get MarkdownFile, where the constant resides in.

# when Ruby resolves a constant, it looks it up in its lexical scope; in this case in the File class as well as in all of its ancestor classes. Since it doens't find it in any of them, it throws a NameError.

# we can fix it by adding explicit namespacing by prepending the class name as follows: self.class::, which means the class of the caller of the method. Using self.class offers the same flexibility that we use on line 12 when creating a new instance of the subclass from which we are calling new.

# additional note: Module#alias_method(new_name, old_name) --> symbol; used to retain access to methods that are overridden