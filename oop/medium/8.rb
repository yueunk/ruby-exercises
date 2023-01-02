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
    else rank
    end
  end

  def <=>(other)
    value <=> other.value
  end
  
  # def ==(other)
  #   value == other.value
  # end

  # def min
  #   cards.map(&:value).min
  # end
  
  # def max
  #   cards.map(&:value).max
  # end
  
  def to_s
    "#{rank} of #{suit}"
  end
end

cards = [Card.new(2, 'Hearts'),
        Card.new(10, 'Diamonds'),
        Card.new('Ace', 'Clubs')]

puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
        Card.new(4, 'Diamonds'),
        Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
        Card.new('Jack', 'Diamonds'),
        Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
        Card.new(8, 'Clubs'),
        Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8

# Enumerable#min and Enumerable#max work with objects whose classes mix-in the Comparable module, which means the class must provide a #<=> method.

# Our solution does that: it includes the Comparable module, and implements #<=>. The method obtains the values of each card with #value, and then compares them using Integer#<=>.

# value uses Hash#fetch to convert named ranks (Jack, Queen, King, Ace) to appropriate values, and uses the numeric value for numbered cards (2-10) as the value.

# redone 12/20
require 'pry'
class Card
  include Comparable # only need to implement #<=>

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  
  def value
    case rank # getter
    when 'Jack' then 11
    when 'Queen' then 12
    when 'King' then 13
    when 'Ace' then 14
    else rank
    end
  end
  
  def <=>(other)
    value <=> other.value
  end
  
  def to_s
    "#{rank} of #{suit}"
  end
end