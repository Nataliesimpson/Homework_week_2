# name, capacity

class Room

  attr_reader :room_name, :capacity, :songs, :guests

  def initialize(room_name, capacity)
    @room_name = room_name
    @capacity = capacity
    @songs = []
    @guests = []
  end 

  def room_starts_with_0_songs
    @songs.length
  end  

  def room_starts_with_0_guests
    @guests.length
  end   




  
end     