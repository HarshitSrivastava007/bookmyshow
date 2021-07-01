class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
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


end
