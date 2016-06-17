# name, category
# gets added to rooms 

require('minitest/autorun')
require_relative('../songs.rb')

class TestSongs < MiniTest::Test

  def setup
    @songs = Songs.new("My Way", :oldschool)

  end

  def test_song_name
    assert_equal("My Way", @songs.song_name)
  end  

  def test_song_category
    assert_equal(:oldschool, @songs.category)
  end  




end    