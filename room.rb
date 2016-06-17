# name, capacity

class Room

  attr_reader :room_name, :capacity, :songs, :guests

  def initialize(room_name, capacity)
    @room_name = room_name
    @capacity = capacity
    @songs = []
    @guests = []
  end 

  def song_count
    @songs.length
  end  

  def guest_count
    @guests.length
  end   

  def add_song_to_room(song)
    @songs << song
  end  


  
end     