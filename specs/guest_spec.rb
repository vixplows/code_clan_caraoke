require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest.rb')

class TestGuest < MiniTest::Test
  def setup
    @guest = Guest.new ("Kylie")
  end

  def test_get_guest_name
    assert_equal("Kylie", @guest.get_guest_name)
  end

end