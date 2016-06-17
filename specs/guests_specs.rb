# name, balance, favourite_song
# check in and out of rooms
# cheer when favourite_song comes on
# pay karaoke bar entry fee
# add more funds to bar tab

require('minitest/autorun')
require_relative('../guests.rb')

class TestGuests < MiniTest::Test

  def setup  #name, balance, favourite_song
    @guests = Guests.new("Frank", 25, "My Way")
    # @nat = Customer.new("Nat", 50, "Don't stop me now")
    # @megan = Customer.new("Megan", 10, "I should be so lucky")
    # @marie = Customer.new("Marie", 35, "Dancing Queen")

    # customer_base = [frank_the_dog, nat, megan, marie]

    # @guests = Guests.new(customer_base)
  end

  def test_customer_name
    assert_equal("Frank", @guests.name() )  
  end  

  def test_customer_balance
    assert_equal(25, @guests.balance() )
  end
  
  def test_favourite_song
    assert_equal("My Way", @guests.favourite_song() )
  end    






end    

