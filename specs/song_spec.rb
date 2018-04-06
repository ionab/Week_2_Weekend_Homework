require("minitest/autorun")
require ("minitest/rg")
require_relative("../song.rb")


class TestSong < MiniTest::Test
  def setup()
    @song = Song.new("Sultans of Swing", "Dire Straights")
  end
  def test_song_has_name()
    assert_equal("Sultans of Swing", @song.name)
  end


end
