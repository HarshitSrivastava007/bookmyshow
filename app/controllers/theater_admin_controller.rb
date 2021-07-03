class TheaterAdminController < ApplicationController
  def index
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @theater = @theateradmin.theater
  end

  def theater_screens
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @theater = @theateradmin.theater
    @screens = @theater.screens
    @screen = Screen.new
  end



  def create_screen
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @screen = Screen.create(screen_params)
    @screens = Screen.where(theater: theateradmin.theater)
    if @screen.save
      redirect_to :theater_admin_create_screen_path
    end
  end

  def edit_screen
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @screens = @theateradmin.theater.screens
    @screen = Screen.find params[:id]
    redirect_to :theater_admin_create_screen_path
  end


  def screen_params
    params.require(:screen).permit(:name, :seats, :theater_id)
  end


end
