class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end
  
  # Anything that is said is retrieved by this listening device via a block. If nothing is said, then no block will be passed in. The listening device can also output the most recent recording using a Device#play method.
  
  def listen(&block)
    record(block) if block_given?
  end
  
  def play
    puts @recordings.last.call
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play


def listen # yield points to the return value of the associated block and you can assign this value to a local variable if you wish!
  record(yield) if block_given? # guard clause for LocalJumpErro prevention
end

def play
  puts @recordings.last
end
# Yield with Return value: It is possible to get the return value of a block by simply assigning the return value of a yield to a variable. if we use yield with an argument, it will pass that argument to the block.