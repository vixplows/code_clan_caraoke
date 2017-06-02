require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../room.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')

class TestRoom < MiniTest::Test
  def setup
    @room1 = Room.new(1)
    @guest1 = Guest.new("Kylie")
    @guest2 = Guest.new("Ozzy")
    @guest3 = Guest.new("Fred")
    @song1 = Song.new("The Wonderstuff: ", "Size of a Cow")
    @song2 = Song.new("Goldfrapp: ", "Number 1")
    @song3 = Song.new("The Orb: ", "Little Fluffy Clouds")
    @guests = [@guest1, @guest2, @guest3]
    @songs = [@song1, @song2, @song3]
  end

  def test_can_get_room_number
    assert_equal(1, @room1.number)
  end

  def test_guest_count
    assert_equal(3, @room1)
  end

  def test_check_guest_in_to_room
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.guest_count)
  end

  # def test_check_guest_out_of_room
  #   @room1.check_in_guest(@guest1)
  #   @room1.check_in_guest(@guest2)
  #   @room1.check_out_guest(@guest1)
  #   assert_equal(1, @room1.guest_count)
  # end

  # def test_added_song_to_room
  #   assert_equal(1, @room1.add_song(@song1))
  # end

end
