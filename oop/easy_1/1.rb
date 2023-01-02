class Banner
  def initialize(message, width = message.size)
    @message = message # instance variable added to store the message
    @width = width
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end
  
  # def count(chr)
  #   chr * @message.size
  # end
  
  private
  
  attr_reader :message, :width
  
  def horizontal_rule
    "+-#{"-" * width}-+"
  end

  def empty_line
    "| #{" " * width} |"
  end

  def message_line
    "| #{@message.center(width)} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 50)
puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# further
class Banner
  def initialize(message, width=message.size)
    @message = message
    @width = width
  end

  def to_s
    if width > MAX_WIDTH
      "Your banner is too wide. The maximum width is #{MAX_WIDTH}."
    elsif width >= message.size 
      [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
    else
      "Your banner is too narrow. The minimum width is #{message.size}."
    end
  end

  private

  attr_reader :message, :width
  
  MAX_WIDTH = 80

  def horizontal_rule
    "+-#{'-' * width}-+"
  end

  def empty_line
    "| #{' ' * width} |"
  end

  def message_line
    "| #{message.center(width)} |"
  end
end