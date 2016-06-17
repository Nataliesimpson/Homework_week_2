# name, capacity
# songs get added to rooms
# guests get added to rooms
require('minitest/autorun')
require_relative('../rooms.rb')

class TestRooms < MiniTest::Test

  def setup
    @rooms = Rooms.new("Gold_room", 3)

  end 
  
def test_room_name
  assert_equal("Gold_room", @rooms.room_name)
end   

def test_room_capacity
  assert_equal(3, @rooms.capacity)
end

end    