# class Card
#   include Comparable

#   attr_reader :rank, :suit

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end
  
#   def value
#     case rank
#     when "Jack" then 11
#     when "Queen" then 12
#     when "King" then 13
#     when "Ace" then 14
#     else
#       rank
#     end
#   end

#   def <=>(other)
#     value <=> other.value
#   end

#   def to_s
#     "#{rank} of #{suit}"
#   end
# end

# class Deck
#   attr_accessor :cards

#   RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
#   SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
#   def initialize
#     reset
#   end

#   def scramble!
#     cards.shuffle!
#   end

#   def draw
#     reset if cards.empty?
#     drawn_card = cards.pop
#     Card.new(drawn_card[0], drawn_card[1])
#   end
  
#   def reset
#     self.cards = []

#     SUITS.each do |suit|
#       RANKS.each do |rank|
#         @cards << [suit, rank]
#       end
#     end
    
#     scramble!
#   end
# end

#LS answer

# insert Card class from previous exercise here
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

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn, drawn2
p drawn != drawn2 # Almost always