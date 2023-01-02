# redone 12/22
class PokerHand
  def initialize(deck)
    @hand = []
    5.times do |n|
      @hand << deck.draw
    end
  end

  def print
    puts @hand
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
  
  def sorted(type) # type should be a symbol
    @hand.sort_by(&:value).map(&type)
  end

  def consecutive_ranks?(length)
    consec_arr = (0..Deck::RANKS.size - length).map { |idx| idx = Deck::RANKS[idx, length] }
    consec_arr.include?(sorted(:rank))
  end
      
  def same?(type, num) # suit or rank symbol
    !sorted(type).select do |item|
      return true if sorted(type).count(item) == num
    end
  end

  def same(type, num) # returns a unique array of repeated type
    sorted(type).select { |item| sorted(type).count(item) == num }.uniq.size
  end

  def royal_flush? # 5 consecutive ranks from 10, one suit
    consecutive_ranks?(5) && sorted(:rank).first == 10 && same?(:suit, 5)
  end

  def straight_flush? # 5 consecutive ranks, one suit
    consecutive_ranks?(5) && same?(:suit, 5)
  end

  def four_of_a_kind? # four same ranks
    same?(:rank, 4)
  end

  def full_house? # three same ranks + two same ranks
    same?(:rank, 3) && same?(:rank, 2)
  end

  def flush? # one suit
    same?(:suit, 5)
  end

  def straight? # 5 consecutive ranks
    consecutive_ranks?(5)
  end

  def three_of_a_kind? # three same ranks
    same?(:rank, 3)
  end

  def two_pair? # two same ranks + two same ranks
    same(:rank, 2) == 2
  end

  def pair? # two same ranks
    same?(:rank, 2)
  end
end