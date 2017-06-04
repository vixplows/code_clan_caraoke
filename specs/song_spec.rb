require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../song.rb')

class TestSong< MiniTest::Test
  def setup
    @song = Song.new("The Wonderstuff", "Size of a Cow")
  end

  def test_can_get_song
    result = @song.artist + @song.title
    assert_equal(("The WonderstuffSize of a Cow"), result)
  end

  def test_song_has_title
    assert_equal("Size of a Cow", @song.title)
  end

  def test_song_has_artist
    assert_equal("The Wonderstuff", @song.artist)
  end

end