# name, balance, favourite_song
# check in and out of rooms
# cheer when favourite_song comes on
# pay karaoke bar entry fee
# add more funds to bar tab

require('minitest/autorun')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup  #name, balance, favourite_song
    @frank_the_dog = Guest.new("Frank", 25, "My Way")
    @nat = Guest.new("Nat", 50, "Don't stop me now")
    @megan = Guest.new("Megan", 10, "Song 2")
    @marie = Guest.new("Marie", 35, "Dancing Queen")
    @ashleigh = Guest.new("Ashleigh", 15, "My Way")
  end

  def test_customer_name
    assert_equal("Frank", @frank_the_dog.name() )  
  end  

  def test_customer_balance
    assert_equal(25, @frank_the_dog.balance() )
  end
  
  def test_favourite_song
    assert_equal("My Way", @frank_the_dog.favourite_song() )
  end    






end    

