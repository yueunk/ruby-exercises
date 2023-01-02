require 'pry'
class Element # element class
  attr_reader :datum, :next
  
  def initialize(datum, new_elem = nil)
    @datum = datum
    @next = new_elem
  end
  
  def tail?
    @next.nil?
  end
end

# The SimpleLinkedList class uses its own push and pop methods to add and remove elements from the front of the list in LIFO fashion. Note that we must take care to re-assign the head attribute each time an element is added to or removed from our linked list.

class SimpleLinkedList # collection class
  attr_reader :head
  
  def size
    count = 0
    current_elem = @head
    while current_elem
      count += 1
      current_elem = current_elem.next
    end
    count
  end
  
  def empty?
    @head.nil?
  end
  
  def push(datum)
    elem = Element.new(datum, @head)
    @head = elem
  end
  
  def pop # returns the popped datum
    datum = peek
    new_head = @head.next
    @head = new_head
    datum
  end
  
  def peek
    @head.datum if @head
  end
  
  def self.from_a(arr)
    arr = [] if arr.nil?
    
    list = SimpleLinkedList.new
    arr.reverse_each { |datum| list.push(datum) }
    list
  end
  
  def to_a
    arr = []
    current_elem = head
    while !current_elem.nil?
      arr.push(current_elem.datum)
      current_elem = current_elem.next
    end
    arr
  end
  
  def reverse
    list = SimpleLinkedList.new
    current_elem = head
    while !current_elem.nil?
      list.push(current_elem.datum)
      current_elem = current_elem.next
    end
    list
  end
end
