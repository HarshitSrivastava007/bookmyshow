class Admin::BookingsController < ApplicationController
  def index
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @theater = @theateradmin.theater
    @screens = @theater.screens
  end

end
