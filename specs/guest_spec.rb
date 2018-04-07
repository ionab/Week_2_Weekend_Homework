require("minitest/autorun")
require ("minitest/rg")

require_relative("../guest.rb")


class TestGuest < MiniTest::Test
  def setup()
    @guest = Guest.new("Kelsie", 50.0)
  end

  def test_guest_has_name()
    assert_equal("Kelsie", @guest.name)
  end
  def test_guest_has_money()
    assert_equal(50.0, @guest.money)
  end

end
