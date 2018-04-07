require("minitest/autorun")
require ("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")


class TestRoom < MiniTest::Test
  def setup()
    @song1 = Song.new("Sultans of Swing", "Dire Straights")
    @song2 = Song.new("The Boxer", "Simon and Garfunkel")
    @guest1 = Guest.new("Kelsie")
    @room = Room.new("The Music Room", [@guest1], [@song1, @song2], 4)
  end

  def test_room_has_name()
    assert_equal("The Music Room", @room.name)
  end
  def test_room_has_capacity()
    assert_equal(4, @room.capacity)
  end

end
