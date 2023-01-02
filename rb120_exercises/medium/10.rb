require 'pry'

class Card
  include Comparable

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  
  def value
    case rank
    when "Jack" then 11
    when "Queen" then 12
    when "King" then 13
    when "Ace" then 14
    else
      rank
    end
  end

  def <=>(other)
    value <=> other.value
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize # to keep it DRY
    reset
  end

  def draw
    reset if @deck.empty?
    @deck.pop # two-item array with rank and suit
  end

  private

  def reset
    @deck = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank, suit)
    end

    @deck.shuffle!
  end
end

class PokerHand
  attr_accessor :hand

  def initialize(hand)
    @hand = []
    
    5.times do
      card = hand.draw
      @hand << card
    end
  end

  def print
    puts hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  # helper methods
  def ranks
    hand.map(&:rank)
  end
  
  def suits
    hand.map(&:suit)
  end
  
  def same_values(kinds, num)
    kinds.select { |kind| kinds.count(kind) == num }.uniq
  end
  
  def same?(kinds, num)
    !same_values(kinds, num).empty?
  end

  def sequence?(num, start_rank=nil)
    sequences = (0..Deck::RANKS.size - num).map { |idx| Deck::RANKS[idx, num] }
    sorted_ranks = hand.sort_by { |card| card.value }.map(&:rank)
    if start_rank == nil
      return sequences.include?(sorted_ranks)
    else
      sequences.select { |seq| seq.first == start_rank }.flatten == sorted_ranks
    end
  end

  # evaluation methods
  def royal_flush?
    same?(suits, 5) && sequence?(5, 10)
  end

  def straight_flush?
    same?(suits, 5) && sequence?(5)
  end

  def four_of_a_kind?
    same?(ranks, 4)
  end

  def full_house?
    same?(ranks, 3) && same?(ranks, 2)
  end

  def flush?
    same?(suits, 5)
  end

  def straight?
    sequence?(5)
  end

  def three_of_a_kind?
    same?(ranks, 3)
  end

  def two_pair?
    same_values(ranks, 2).size == 2
  end

  def pair?
    same?(ranks, 2)
  end
end

=begin
Straight flush: Five cards of the same suit in sequence (if those five are A, K, Q, J, 10; it is a Royal Flush)
Four of a kind: Four cards of the same rank and any one other card
Full house: Three cards of one rank and two of another
Flush: Five cards of the same suit
Straight: Five cards in sequence (for example, 4, 5, 6, 7, 8)
Three of a kind: Three cards of the same rank
Two pair: Two cards of one rank and two cards of another
One pair: Two cards of the same rank
High card: If no one has a pair, the highest card wins
=end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array # #draw is a new_name for #pop
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'