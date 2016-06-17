# room_name, capacity

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

  def add_guest_to_room(guest)
    if guest_count < @capacity
    @guests << guest
      return true
    else
     return false  
    end 
  end
  
  def check_out_guests(check_out_guest)
    guest_to_check_out = @guests.each{|guest| guest.name == check_out_guest.name}
    guest_to_check_out.delete_at(0) 
  end   

  def add_multiple_songs_to_room(all_songs)
    @songs = @songs + all_songs
  end    

  def add_multiple_guests_to_room(all_guests)
    @guests = @guests + all_guests
  end  




  
end     