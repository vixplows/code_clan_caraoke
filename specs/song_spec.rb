require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../song.rb')

class TestSong< MiniTest::Test
  def setup
    @song = Song.new("The Wonderstuff", "Size of a Cow")
  end

end