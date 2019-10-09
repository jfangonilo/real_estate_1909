require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test
  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_it_exists
    assert_instance_of  Room, @room
  end

  def test_it_has_a_category
    assert_equal :bedroom, @room.category
  end

  def test_it_has_length_and_width
    assert_equal 10, @room.length
    assert_equal 13, @room.width
  end
end
