# transaction_test.rb
require 'minitest/autorun'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def setup
    @transaction = Transaction.new(20) # item_cost is 20
  end
  
  def test_prompt_for_payment
    input = StringIO.new("30\n") # create a mock object
    output = StringIO.new # create a mock object
    @transaction.prompt_for_payment(input: input, output: output) # add this!
    assert(30, @transaction.amount_paid)
  end
end

# With the description above, this code isn't too difficult to understand. The test first creates a new transaction for an item whose cost is $30. We then create a StringIO object that simulates a keyboard entry of the number 30 followed by a newline character. Next, we pass the StringIO object to the prompt_for_payment method.

# Since prompt_for_payment will get its input from the StringIO object, it will act exactly like it would have were we using the keyboard directly. In this case, it will set the amount paid to $30 and return. Finally, we can assert that the right amount was paid.

