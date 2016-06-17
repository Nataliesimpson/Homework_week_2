# name, category

class Song

  attr_reader :song_name, :artist_name, :category

  def initialize(song_name, artist_name, category)
    @song_name = song_name
    @artist_name = artist_name
    @category = category
  end
  
end    