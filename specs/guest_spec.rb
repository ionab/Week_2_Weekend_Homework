require("minitest/autorun")
require ("minitest/rg")

require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")


class TestGuest < MiniTest::Test
  def setup()
    @song1 = Song.new("Sultans of Swing", "Dire Straights")
    @song2 = Song.new("The Boxer", "Simon and Garfunkel")
    #In your set up, guest had a favourite song, but remember the 
    #priniple that the GUEST HAS A SONG. so you need to pass it a song object
    @guest = Guest.new("Kelsie", 50.0, @song2)
    @songs = [@song1, @song2]
    @room = Room.new("The Music Room", @guests, @songs, 4, 5.0, 0.0)
  end

  def test_guest_has_name()
    assert_equal("Kelsie", @guest.name)
  end

  def test_guest_has_money()
    assert_equal(50.0, @guest.money)
  end

  def test_guest_can_afford_entry_fee()
    fee = @room.entry_fee
    assert_equal(true, @guest.sufficient_funds(fee))
  end
  def test_guest_has_insufficent_funds_for_entry_fee()
    room2 = Room.new("The Music Room2", @guests, @songs, 4, 80.0, 0.0)
    fee = room2.entry_fee
    assert_equal(false, @guest.sufficient_funds(fee))
  end
  def test_guest_pay_entry__decreases_money
    fee = @room.entry_fee
    @guest.pay_fee(fee)
    assert_equal(45.0, @guest.money())
  end
  #here you were passing in the @guests as an argument along with songs.
  #you should never be doing this
  def test_guest_cheers_if_room_has_favourite_song
    assert_equal("Whoo", @guest.cheer_for_fav_song(@songs))
  end

end
