require 'test_helper'

class BidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "test_bid_amount_in_pounds" do
    b = Bid.new(amount_in_pence:122)
    result = 1.22
    assert_equal result,b.amount_in_pounds

  end
end
