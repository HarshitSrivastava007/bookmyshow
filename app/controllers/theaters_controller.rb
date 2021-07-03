class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
    @cities = City.all
  end


  def show
    @theater = Theater.find(params[:id])
    # @screens = @theater.screens
  end

  
  # def screens
  #   @screens = Screen.where(theater_id: params[:theater_id])
  # end

  # def seat
  # end

  def seat
    @show = Show.find(1)
    puts @show.inspect
  end


end
