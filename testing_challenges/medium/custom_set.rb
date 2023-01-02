class CustomSet
  def initialize(set = [])
    @set = set.uniq
  end
  
  def empty?
    set.empty?
  end
  
  def contains?(elem)
    set.include?(elem)
  end
  
  def subset?(other)
    (other.set & set) == set
  end
  
  def disjoint?(other)
    (other.set & set).empty?
  end
  
  def eql?(other)
    set.sort == other.set.sort
  end
  alias_method :==, :eql?
  
  def add(int)
    CustomSet.new(set << int)
  end
  
  def intersection(other)
    CustomSet.new(set & other.set)
  end
  
  def difference(other)
    CustomSet.new(set - other.set)
  end
  
  def union(other)
    CustomSet.new(set + other.set)
  end
  
  protected
  
  attr_reader :set
end