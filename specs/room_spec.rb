require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../room.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')

class TestRoom < MiniTest::Test
  def setup
    @guest1 = Guest.new("Kylie", 5)
    @guest2 = Guest.new("Ozzy", 15)
    @guest3 = Guest.new("Fred", 20)
    @song1 = Song.new("The Wonderstuff", "Size of a Cow")
    @song2 = Song.new("Goldfrapp: ", "Number 1")
    @song3 = Song.new("The Orb: ", "Little Fluffy Clouds")
    @room = Room.new("Blue", 2, 10, 0)
    @room_2 = Room.new("Red", 0, 5, 0)
  end

  def test_room_has_name
    assert_equal("Blue", @room.name())
  end

  def test_room_has_entry_fee
    assert_equal(5, @room_2.entry_fee)
  end

  def test_room_starts_empty
    assert_equal(0, @room.guest_count())
  end

  def test_room_capacity
    assert_equal(2, @room.capacity)
  end

  def test_get_room_till
    assert_equal(0, @room.till)
  end

  def test_check_in_guest_to_room
    @room.check_in_guest(@guest1)
    assert_equal(1, @room.guest_count())
  end

  def test_check_in_multiple_guests_to_room
    @room.check_in_guest(@guest1)
    @room.check_in_guest(@guest2)
    assert_equal(2, @room.guest_count())
  end

  def test_check_room_full__is_full
    @room.check_in_guest(@guest1)
    @room.check_in_guest(@guest2)
    assert_equal(true, @room.check_room_full(@guest3))
  end

  def test_check_room_full__not_full
    @room.check_in_guest(@guest1)
    assert_equal(false, @room.check_room_full(@guest2))
  end

  def test_check_guest_can_afford_entry_fee__can
    assert_equal(true, @room.guest_can_afford_fee(@guest2))
  end

  def test_check_guest_cannot_afford_entry_fee__cannot
    assert_equal(false, @room.guest_can_afford_fee(@guest1))
  end

  def test_check_out_guest_from_room
    @room.check_in_guest(@guest1)
    @room.check_in_guest(@guest2)
    @room.check_out_guest(@guest1)
    assert_equal(1, @room.guest_count())
  end

  # ## Trying to a test to test method that only checks-in a guest when 1) they can afford the fee and 2) there is space in the room. Test to check guest has been added to guest count and money taken from wallet and added to cash pot of the caraoke - need to give caraoke a till attribute... need a venue class??)
  # def test_guest_fully_check_in_to_room
  #   @room.check_in_guest(@guest2)

  #   assert_equal(1, @room.guest_count())
  #   assert_equal(10, @room.till())
  #   assert_equal(5, @guest2.wallet())
  # end

  def test_room_starts_with_no_songs
    assert_equal(0, @room.song_count())
  end

  def test_add_song_to_room_playlist
    @room.add_song(@song1)
    assert_equal(1, @room.song_count())
  end

  def test_add_multiple_songs_to_room_playlist
    @room.add_song(@song1)
    @room.add_song(@song2)
    assert_equal(2, @room.song_count())
  end

  def test_remove_songs_from_room_playlist
    @room.add_song(@song1)
    @room.add_song(@song2)
    @room.remove_song(@song1)
    assert_equal(1, @room.song_count())
  end

end