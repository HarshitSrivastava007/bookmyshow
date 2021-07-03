class ShowsController < ApplicationController
  def index
    @theater = Theater.find(params[:theater_id])
    @screens = @theater.screens
  end

  def show
    @theater = Theater.find(params[:theater_id])
    @show = Show.find(params[:id])
  end

  # def seats
  #   @theater = Theater.find(params[:theater_id])
  #   @screen = @theater.screens
  #   @show = Show.find(params[:id])
  # end

end
