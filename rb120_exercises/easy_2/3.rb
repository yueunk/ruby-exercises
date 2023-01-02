# Modify the House class. You are permitted to define only one new method in House.
class House
  attr_reader :price
  include Comparable # include the Comparable mixin
  def initialize(price)
    @price = price
  end
  
  def <=>(other) # define #<=> method
    price <=> other.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2.price > home1.price
#Home 1 is cheaper
# Home 2 is more expensive