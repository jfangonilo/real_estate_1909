require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test
  def setup
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
    @house = House.new("$400000", "123 sugar lane")
  end

  def test_it_exists
    assert_instance_of House, @house
  end

  def test_it_has_a_price
    assert_equal "$400000", @house.price
  end

  def test_it_has_an_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_add_room
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    assert_equal [@room_1, @room_2], @house.rooms
  end
end