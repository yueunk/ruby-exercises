# cash_register_test.rb
require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction' # since cash_register.rb includes the CashRegister class that collaborates with the Transaction class, must require this file as well; note .rb is excluded

class CashRegisterTest < Minitest::Test # naming convetion; end with Test
  def setup
    @register = CashRegister.new(1000) # total_money is 1000
    @transaction = Transaction.new(20) # item_cost is 20
  end
  
  def test_accept_money
    @transaction.amount_paid = 20
    previous_total = @register.total_money
    
    @register.accept_money(@transaction) # did #accept_money perform correctly?
    current_total = @register.total_money # expected
    
    # @total_money should be updated by the amount paid of the transaction
    # expected should be previous total + amount_paid
    # actual should be current total
    assert_equal(previous_total + 20, current_total)
  end
  
  def test_change
    @transaction.amount_paid = 20
    assert_equal(20 - 20, @register.change(@transaction))
  end
  
  def test_give_receipt
    assert_output("You've paid $20.\n") { @register.give_receipt(@transaction) } # \n added because #puts adds a new line in its output
  end
end

