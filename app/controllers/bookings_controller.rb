class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

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

  def update
    booking = Booking.find(params[:id])
    booking.status = params[:booking][:status]
    booking.save
    redirect_to my_powers_path(current_user)
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy!
    redirect_to my_powers_path(current_user)
  end

  # def accept_booking
  #   booking = Booking.find(:params[:booking_id])
  #   booking.status = "Accepted"
  # end

  # def reject_booking
  #   booking = Booking.find(:params[:booking_id])
  #   booking.status = "Rejected"
  # end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
