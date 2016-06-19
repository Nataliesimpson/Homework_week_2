# name, balance, favourite song

class Guest

  attr_reader :name, :balance, :favourite_song

  def initialize(name, balance, favourite_song)
    @name = name
    @balance = balance
    @favourite_song = favourite_song
  end   

  def add_to_guest_balance(pay_in_amount)
    @balance += pay_in_amount
  end
  
  def pay_membership_fee(membership_fee)
    @balance -= membership_fee
  end
  
  # def cheer_when_favourite_song(favourite_song)
  #   if @frank_the_dog.favourite_song == @song_1.song_name
  #   return "Whooo!"
  #   else
  #   return nil
  #   end
  # end      

 



end  