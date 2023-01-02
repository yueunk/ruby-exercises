=begin
- a stack can grow and shrink dynamically, and can be implemented using Array in ruby -- #push and #pop.
- each operation operates on a register, which is the current value (not part of the stack)
- operations that require two values...
  - pop the topmost item from the stack (aka the latest item pushed)
  - perform the operation using the popped value
  - store the result back in the register

-MULT operation: a stack_and_register language
  - it multiplies the stack value with the register value
  - removes the value from the stack
  - store the result back in the register
- ex: a stack of 3 6 4 (4 is the topmost item) & a register value of 7
  - MULT will transform things to 3 6 on the stack (4 removed), and the result of the multiplication, 28, is left in the register (removed * register)
  - anoter MULT will be 168 (6 * 28) in the register, with 3 on the stack
  
write a method that takes a string argument and initialize the register to 0
- n is register
- PUSH pushes the register value on to the stack

what I learned... 
use when... then syntax for readability
=end

def minilang(string)
  n = 0 # register 
  stack = []
  script_array = string.split
  script_array.each do |item|
    case item
    when /[0-9]/
      n = item.to_i
    when 'PUSH'
      stack << n
    when 'ADD'
      n += stack.pop
    when 'SUB'
      n -= stack.pop
    when 'MULT'
      n *= stack.pop
    when 'DIV'
      n /=stack.pop
    when 'MOD'
      n %=stack.pop
    when 'POP'
      n = stack.pop
    when 'PRINT'
      puts n
    end
  end
end


# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # # 5
# # # 3
# # # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)