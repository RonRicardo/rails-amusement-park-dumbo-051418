class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
 #    has a method 'take_ride' that accounts for the user not having enough tickets (FAILED - 43)
 # has a method 'take_ride' that accounts for the user not being tall enough (FAILED - 44)
 # has a method 'take_ride' that accounts for the user not being tall enough and not having enough tickets (FAILED - 45)
 # has a method 'take_ride' that updates ticket number (FAILED - 46)
 # has a method 'take_ride' that updates the user's nausea (FAILED - 47)
 # has a method 'take_ride' that updates the user's happiness (FAILED - 48)
 #

 @user.happiness += self.happiness_rating


  end

  def ticket_check
    @user.tickets
  end

  def height_check
    @user.height
  end

end
