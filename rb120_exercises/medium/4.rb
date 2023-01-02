# buffer size
# need to keep track of which value was added first (array)
# the array is the same as the buffer_size
# when the array is full, replace the oldest item with the new
require 'pry'
# class CircularQueue
#   attr_reader :circular_queue, :buffer_size

#   def initialize(buffer_size)
#     @buffer_size = buffer_size
#     @circular_queue = Array.new
#   end

#   def []=(index, object)
#     circular_queue[index] = object
#   end

#   def enqueue(data)
#     # binding.pry
#     return circular_queue << data if circular_queue.size < buffer_size
#     circular_queue[circular_queue.index(circular_queue.min)] = data
#   end
  
#   def dequeue
#     return nil if circular_queue.empty?
#     circular_queue.delete(circular_queue.min)
#   end
# end

class CircularQueue
  def initialize(size)
    @size = size
    @arr = []
  end

  def enqueue(obj)
    dequeue if @arr.size == @size
    @arr << obj
  end

  def dequeue
    @arr.shift
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

# what I learned...
# it's circular; the first item in an array is the same position as being the last item. 

# redone 12/18
class CircularQueue
  def initialize(length)
    @length = length
    @queue = []
  end
  
  def dequeue
   # remove the oldest value (first item)
    @queue.shift
  end
  
  def enqueue(value)
    # add the value; if the queue is maxed out, remove (dequeue) then add the value
    dequeue if @queue.size >= @length
    @queue << value
  end
end