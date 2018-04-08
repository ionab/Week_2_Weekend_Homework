require("minitest/autorun")
require ("minitest/rg")
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")


class TestRoom < MiniTest::Test
  def setup()
    @song1 = Song.new("Sultans of Swing", "Dire Straights")
    @song2 = Song.new("The Boxer", "Simon and Garfunkel")
    @song3 = Song.new("Gimmie Shelter", "Rolling Stones")
    songs = [@song1, @song2]
    @guest1 = Guest.new("Kelsie", 50.0)
    @guests = [@guest1]
    @room = Room.new("The Music Room", @guests, songs, 4, 5.0, 0.0)
  end

  def test_room_has_name()
    assert_equal("The Music Room", @room.name)
  end

  def test_room_capacity()
    assert_equal(4, @room.capacity)
  end
  def test_room_fee()
    assert_equal(5.0, @room.entry_fee)
  end

  def test_check_in_guest()
     assert_equal(1, @room.check_in_guest(@guests, @room.capacity))
  end

  def test_room_full()
    guests = [@guest1, Guest.new("Katie", 20.0), Guest.new("Mhairi", 30.0), Guest.new("Caitlin", 15.0), Guest.new("Claire", 30.0)]
    assert_equal("Sorry that room is full!", @room.check_in_guest(guests, @room.capacity))
  end

  def test_check_out_guests()
      assert_equal(0, @room.check_out_guest.count)
  end

  def test_room_has_songs()
    assert_equal(2, @room.songs().length())
  end

  def test_add_song()
    @room.add_song(@song3)
    assert_equal(3, @room.songs().length())
  end

end
