require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../room.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')

class TestRoom < MiniTest::Test
  def setup
    @guest1 = Guest.new("Kylie")
    @guest2 = Guest.new("Ozzy")
    @guest3 = Guest.new("Fred")
    @song1 = Song.new("The Wonderstuff", "Size of a Cow")
    @song2 = Song.new("Goldfrapp: ", "Number 1")
    @song3 = Song.new("The Orb: ", "Little Fluffy Clouds")
    @room = Room.new(1, 2)
    @room_2 = Room.new(1, 0)
  end

  def test_room_has_number
    assert_equal(1, @room.number())
  end

  def test_room_starts_empty
    assert_equal(0, @room.guest_count())
  end

  def test_room_has_capacity_set
    assert_equal(2, @room.capacity)
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

  def test_check_in_guest__no_space
    @room.check_in_guest(@guest1)
    @room.check_in_guest(@guest2)
    @room.check_in_guest(@guest3)
    assert_equal(2, @room.guest_count)
    assert_equal("Cannot add guest, room full", @room_2.check_in_guest(@guest2))
  end

  def test_check_out_guest_from_room
    @room.check_in_guest(@guest1)
    @room.check_in_guest(@guest2)
    @room.check_out_guest(@guest1)
    assert_equal(1, @room.guest_count())
  end

  def test_room_starts_with_no_songs
    assert_equal(0, @room.song_count())
  end

  def test_add_song_to_room
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