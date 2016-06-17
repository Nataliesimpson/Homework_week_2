# name, capacity
# songs get added to rooms
# guests get added to rooms
require('minitest/autorun')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup
    @frank_the_dog = Guest.new("Frank", 25, "My Way")
    @nat = Guest.new("Nat", 50, "Don't stop me now")
    @megan = Guest.new("Megan", 10, "Song 2")
    @marie = Guest.new("Marie", 35, "Dancing Queen")
    @ashleigh = Guest.new("Ashleigh", 15, "My Way")

    # customer_base = [@frank_the_dog, @nat, @megan, @marie, @ashleigh]
    # @guests = Guests.new(customer_base)

    @song_1 = Song.new("My Way", "Frank Sinatra", :oldschool)
    @song_2 = Song.new("Angels", "Robbie Willaims", :pop)
    @song_3 = Song.new("Don't Stop me now", "Queen", :oldschool)
    @song_4 = Song.new("Song 2", "Blur", :pop)
    @song_5 = Song.new("Dancing Queen", "Abba", :disco)
    @song_6 = Song.new("Stayin Alive", "Beegees", :disco)

    # song_library = [@song_1, @song_2, @song_3, @song_4, @song_5, @song_6]
    # @songs = Songs.new(song_library)

    @room_1 = Room.new("Gold_room", 3)
    @room_2 = Room.new("Silver_room", 1)
  end 
  
def test_room_name
  assert_equal("Gold_room", @room_1.room_name() )
end   

def test_room_capacity
  assert_equal(3, @room_1.capacity() )
end

def test_song_count
  assert_equal(0, @room_1.song_count() )
end  

def test_guest_count
  assert_equal(0, @room_1.guest_count() )
end  

def test_add_song_to_room
  @room_1.add_song_to_room (@song_1)
  assert_equal(1, @room_1.song_count() )
end  

def test_add_guest_to_room
  @room_1.add_guest_to_room (@nat)
  assert_equal(1, @room_1.guest_count() )
end  

def test_add_guest_to_room_returns_true
  result = @room_2.add_guest_to_room (@nat)
  assert_equal(true, result)
end  

def test_room_capacity
  @room_2.add_guest_to_room (@nat)
  result = @room_2.add_guest_to_room (@marie)
  assert_equal(false, result)
end   

def test_check_out_guests
  @room_2.add_guest_to_room (@nat)
  @room_2.check_out_guests (@nat)
  assert_equal(0, @room_2.guest_count() )
end  







end    