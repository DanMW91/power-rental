class BookingsController < ApplicationController

  def create

    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.power_id = params[:power_id]
    @booking.save
    redirect_to power_path(params[:power_id])
  end
  
  def index
    @bookings = Booking.where(user_id: current_user.id)
  end 

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
