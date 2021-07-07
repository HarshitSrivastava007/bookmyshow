class ShowsController < ApplicationController
  def index
    @theater = Theater.find(params[:theater_id])
    @screens = @theater.screens
  end

  def show
    @theater = Theater.find(params[:theater_id])
    @show = Show.find(params[:id])
    @booking = Booking.new
    @booking_seat = []
    @show.bookings.each do |s|
      @booking_seat += s.seats.split(",").to_a.map(&:to_i)
    end
    @booking = Booking.new
  end

end
