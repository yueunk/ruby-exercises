class Book
  attr_accessor :title, :author # defining this way is okay unless we want to later assign state to either of these attributes
  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)
# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

=begin
Question 1: What do you think of this way of creating and initializing Book objects? (The two steps are separate.)

Answer 1: Defining a class will predominantly depend on how we want our program(rest of the code) to interact with the objects of that class. If we know that in the rest of our program we would want to create book objects that we can later assign state to with either 2 attributes(author and title) or one of the 2 (because the data(author and title) will come from some other place in the program). Then defining our class this way is a clean way to do so. If, however, we know that we want to create book objects with an author and title that cannot be changed/mutated somewhere else in the rest of the codebase than it would be wise to use a constructor (initialize method) that accepts the number of attributes that we want and to only use the instance method att_reader to create a getter method that would allow us to access the state of the object without having the option to reset it either intentionally or by accident later.

Question 2: Would it be better to create and initialize at the same time like in the previous exercise?

Answer 2: Personally, I prefer the solution of the previous exercise. Creating objects with a state allows to troubleshoot the object from the start, if we try to instantiate an object with the wrong number of argument we can find out at the instantiation stage and not later in the program where it would be a hassle to find the source of the bug. It also allows us immediate usability and purpose, as in, we can immediately put them to good use with the rest of our program. Additionally, It allows us to create an association relationship (an author and his title) between the attributes of an object at the instantiation/initialization stage.

Question 3: What potential problems, if any, are introduced by separating the steps?

Answer 3: 1 of the problems is the possibility of resetting any of the object attribute's state, either intentionally or by mistake, which could have serious repercussions for the rest of our program. Another possible problem is the association relationship between the author and title could easily be lost. A book object with a title and no author is in my opinion incomplete. Same with a book object with just an author's name, practically nonsensical and is of no use. When you add the possibility to change or set an author's name and title separately, the chances of making errors(associating a title with the wrong author or vice versa) could have serious consequences.
Additionally, having to set the author and title separately after creating the object, would force us to write many expressions for something that we can easily encapsulate at the time of object instantiation.

Bottom Line: It all depends on how we want the rest of our program to interact with objects of the class we're defining. Understanding that relationship allows us to use Encapsulation in the way that better serves our users, protect their data and prevent us from having sleepless nights.
=end