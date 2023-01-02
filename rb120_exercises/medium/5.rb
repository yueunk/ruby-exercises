require 'pry'

class MinilangError < StandardError; end
class BadTokenError < MinilangError; end
class EmptyStackError < MinilangError; end

class Minilang
  def initialize(command)
    @command = command.split
    @register = 0
    @stack = []
  end

  def push_to_stack
    @stack << @register
  end
  
  def add
    @register += @stack.pop
  end
  
  def sub
    @register -= @stack.pop  
  end
  
  def mult
    @register *= @stack.pop
  end
  
  def div
    @register /= @stack.pop
  end
  
  def mod
    @register %= @stack.pop
  end
  
  def pop
    raise EmptyStackError, "Empty stack!" if @stack.empty?
    @register = @stack.pop
  end
  
  def print
    puts @register
  end
  
  def eval
    @command.each do |value|
      case value
      when /\d+/ then @register = value.to_i
      when 'PUSH' then push_to_stack
      when 'ADD' then add
      when 'SUB' then sub
      when 'MULT' then mult
      when 'DIV' then div
      when 'MOD' then mod
      when 'POP' then pop
      when 'PRINT' then print
      else raise BadTokenError, "Invalid token: #{value}"
      end
    end
  rescue MinilangError => error
    puts error.message
  end
end
