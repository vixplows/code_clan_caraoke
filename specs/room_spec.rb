require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../room.rb')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new (1)
  end

  def test_can_get_room
    assert_equal(1, @room.number)
  end

  def test_guest_checked_in_to_room
  end

end