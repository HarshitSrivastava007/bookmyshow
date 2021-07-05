class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      render :index
    end
  end


  def booking_params
    params.require(:booking).permit(:show_id, :user_id, :is_confirm, :seats ,:amount)
  end

end
