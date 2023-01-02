# # compute the number of guess for a given range
# # Math.log2(size_of_range).to_i + 1 # size_of_range = max - min

# # allow the user to input the min and max of a range for the game

require 'pry'
class GuessingGame
  attr_reader :min, :max, :size_of_range, :range, :max_guesses

  GUESS_RESULT_MSG = {
    high: "too high",
    low: "too low",
    match: "correct"
  }
  
  WIN_OR_LOSE = {
    high: :lose,
    low: :lose,
    match: :win
  }

  WIN_OR_LOSE_MSG = {
    lose: "lost...",
    win: "won!"
  }

  def initialize(min, max)
    @min = min
    @max = max
    @size_of_range = max - min
    @secret_num = nil
    @max_guesses = Math.log2(@size_of_range).to_i + 1
    @range = min..max
  end
  
  # must be public since we call this method on the object to start the game
  def play 
    reset
    game_result = play_game
    display_game_end_msg(game_result)
  end
  
  private
  
  def reset
    @secret_num = rand(range)
  end

  def display_guesses_remaining(num)
    puts "#{num} guesses left" if num > 1
    puts "#{num} guess left" if num == 1
  end
  
  def check_guess(num) # returns a symbol
    return :match if @secret_num == num
    return :high if @secret_num < num
    :low if @secret_num > num
  end

  # pick referencing an integer returned
  def obtain_one_guess 
    loop do
      print "pick a number between #{min} - #{max}: "
      pick = gets.chomp.to_i
      return pick if range.cover?(pick)
      print "invalid. "
    end
  end

  def play_game
    guess_result = nil
    max_guesses.downto(1) do |guesses_remaining|
      puts # outputs an empty line
      display_guesses_remaining(guesses_remaining)
      guess_result = check_guess(obtain_one_guess)
      puts GUESS_RESULT_MSG[guess_result]
      break if guess_result == :match
    end
    # binding.pry
    WIN_OR_LOSE[guess_result] # returns a symbol (:win or :lose)
  end
  
  def display_game_end_msg(result)
    puts "", WIN_OR_LOSE_MSG[result]
  end
end

new_game = GuessingGame.new(50, 100)
new_game.play

# assigning a constant to an expression including instance variable or the getter method didn't work


# redone 12/20
# accept low and high number
# compute a num of guesses

class GuessingGame
  EVAL_MSG = {
    low: "Your guess is too low.",
    high: "Your guess is too high.",
    same: "That's the number!"
  }.freeze

  WIN_OR_LOSE = {
    high: :lose,
    low: :lose,
    same: :win
  }.freeze
  
  RESULT_MSG = {
    lose: "You lost!",
    win: "You won!"
  }.freeze

  def initialize(min, max)
    @min = min
    @max = max
    @range = @min..@max
    @size_of_range = @max - @min
    @max_guesses = Math.log2(@size_of_range).to_i + 1
    @secret_num = nil
  end

  def play
    reset # sets a secret number
    result = play_game
    print_result_message(result)
  end
  
  private
  
  def reset
    @secret_num = rand(@range)
  end
  
  def make_one_guess
    num = nil
    loop do
      print "Enter a number between #{@min} and #{@max}: "
      num = gets.chomp.to_i
      break if @range.cover?(num)
      print "Invalid. " 
    end
    num
  end
  
  def evaluate(guess)
    if guess == @secret_num
      :same
    elsif guess > @secret_num
      :high
    else
      :low
    end
  end
  
  def print_result_message(result)
    verdict = WIN_OR_LOSE[result]
    puts RESULT_MSG[verdict]
  end
  
  def play_game
    result = nil
    @max_guesses.downto(1) do |guess_remaining|
      puts "You have #{guess_remaining} guesses remaining."
      result = evaluate(make_one_guess)
      puts EVAL_MSG[result]
      puts
      return result if WIN_OR_LOSE[result] == :win
    end
    result
  end
end

game = GuessingGame.new(2, 101)
game.play