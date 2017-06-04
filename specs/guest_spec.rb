require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest.rb')

class TestGuest < MiniTest::Test
  
  def setup()
    @guest = Guest.new("Kylie", 5)
  end

  def test_can_guest_has_name
    assert_equal("Kylie", @guest.name())
  end

  def test_can_get_amount_in_wallet
    assert_equal(5, @guest.wallet)
  end

end