require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../song.rb')

class TestSong< MiniTest::Test
  def setup
    @song = Song.new("The Wonderstuff: ", "Size of a Cow")
  end

  def test_can_get_song
    result = @song.artist + @song.title
    assert_equal(("The Wonderstuff: Size of a Cow"), result)
  end

end