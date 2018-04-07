require("minitest/autorun")
require ("minitest/rg")

require_relative("../guest.rb")
require_relative("../room.rb")


class TestGuest < MiniTest::Test
  def setup()
    @guest = Guest.new("Kelsie", 50.0)
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

end
