class ShowsController < ApplicationController
  def index
    @theater = Theater.find(params[:theater_id])
    @screens = @theater.screens
  end

  def show
    @theater = Theater.find(params[:theater_id])
    @show = Show.find(params[:id])
    @booking = Booking.new  
    @booked_seats = []
    @show.bookings.each do |s|
      @booked_seats += s.seats.split(",").to_a.map(&:to_i)
    end
    @booking = Booking.new
  end

end
