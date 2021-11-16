class BookingsController < ApplicationController

  def create
    
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end  
end
