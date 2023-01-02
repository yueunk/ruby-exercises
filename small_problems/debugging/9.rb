def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  loop do
  winning_number = (1..max_number).to_a.sample # integer
  attempts = 0
    loop do
      attempts += 1
      break if attempts > max_attempts
  
      input = nil
      until valid_integer?(input)
        print 'Make a guess: '
        input = gets.chomp # string
      end
  
      guess = input.to_i # integer
  
      if guess == winning_number # works, but goes on
        puts 'Yes! You win.'
        break
      else
        puts 'Nope. Too small.' if guess < winning_number
        puts 'Nope. Too big.'   if guess > winning_number
  
        # Try again:
        # guess_number(max_number, max_attempts)
      end
    end
    
    puts "Would you like to try again?"
    answer = gets.chomp
    break if answer.start_with?('n')
  end
end

guess_number(10, 3)

#A friend of yours wrote a number guessing game. The first version he shows you picks a random number between 1 and a provided maximum number and offers you a given number of attempts to guess it.

#However, when you try it, you notice that it's not working as expected. Run the code and observe its behavior. Can you figure out what is wrong?

# - unusual behavior when you exceed the max attemps
# - when you win, it goes on

# solution: try again can be achieved by using a higher level loop (line 6 - 36)