# name, artist, category
# gets added to rooms 

require('minitest/autorun')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup
    @song_1 = Song.new("My Way", "Frank Sinatra", :oldschool)
    @song_2 = Song.new("Angels", "Robbie Willaims", :pop)
    @song_3 = Song.new("Don't Stop me now", "Queen", :oldschool)
    @song_4 = Song.new("Song 2", "Blur", :pop)
    @song_5 = Song.new("Dancing Queen", "Abba", :disco)
    @song_6 = Song.new("Stayin Alive", "Beegees", :disco)
  end

  def test_song_name
    assert_equal("My Way", @song_1.song_name)
  end  

  def test_song_category
    assert_equal(:oldschool, @song_1.category)
  end  

  def test_artist_name
    assert_equal("Abba", @song_5.artist_name)
  end  



end    