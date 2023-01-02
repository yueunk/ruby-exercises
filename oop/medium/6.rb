# guessing game
# if a player guesses a number between 1 - 100 correctly within 7 guesses, the player wins
# noun: game, player, correct number, guess
# verb: guesses, wins, loses
# require 'pry'
# class Player
#   attr_accessor :pick

#   def picks_a_num
#     loop do
#       print "Enter a number between 1 and 100: "
#       self.pick = gets.chomp.to_i
#       break if pick > 0 && pick <= 100 
#       print "Invalid guess. "
#     end
#   end
  
#   def >(other)
#     pick > other.pick
#   end
  
#   def <(other)
#     pick < other.pick
#   end
  
#   def ==(other)
#     pick == other.pick
#   end
# end

# class GuessingGame
#   attr_accessor :remaining_guess, :player

#   def initialize
#     @remaining_guess = 7
#     @player = Player.new
#     @answer = (1..100).to_a.sample
#   end

#   def right_guess?
#     player.pick == @answer
#   end

#   def hint
#     player.pick > @answer ? (puts "Your guess is too high.") : (puts "Your guess is too low.")
#   end
  
#   def gameover_message
#     puts "You have no more guesses. You lost!"
#   end

#   def play
#     loop do
#       puts "You have #{remaining_guess} guesses remaining."
#       player.picks_a_num
#       self.remaining_guess -= 1
#       if right_guess?
#         puts "You won!"
#         break
#       elsif self.remaining_guess < 1
#         puts "You have no more guesses. You lost!"
#         break
#       end
#       hint
#       puts ""
#     end
#   end
# end

# game = GuessingGame.new
# game.play

# redone 12/20
# there's a secret number, there's a number of rounds the player can play, there's a number range to guess from
# player guesses the number between 1 - 100
  # player input validation
  # player input eval
    # too high, too low, guessed right (get out of the loop)
    # break when 7 times reached
# player sees the result -- won or lost
require 'pry'
class GuessingGame
  RANGE = 1..100
  MAX_GUESSES = 7
  
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

  def initialize
    @secret_num = nil
  end

  def play
    reset # sets a secret number
    result = play_game
    print_result_message(result)
  end
  
  private
  
  def reset
    @secret_num = rand(RANGE)
    binding.pry
  end
  
  def make_one_guess
    num = nil
    loop do
      print "Enter a number between #{RANGE.first} and #{RANGE.last}: "
      num = gets.chomp.to_i
      break if RANGE.cover?(num)
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
    MAX_GUESSES.downto(1) do |guess_remaining|
      puts "You have #{guess_remaining} guesses remaining."
      result = evaluate(make_one_guess)
      puts EVAL_MSG[result]
      puts
      return result if WIN_OR_LOSE[result] == :win
    end
    result
  end
end

game = GuessingGame.new
game.play