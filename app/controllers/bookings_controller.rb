class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.save
    
  end


  def booking_params
    params.require(:show).permit(:show_id, :user_id, :is_confirm)
  end

end
