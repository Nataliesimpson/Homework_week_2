# name, category

class Songs

  attr_reader :song_name, :category

  def initialize(song_name, category)
    @song_name = song_name
    @category = category
  end
  
end    