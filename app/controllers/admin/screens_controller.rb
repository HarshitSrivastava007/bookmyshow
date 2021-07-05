class Admin::ScreensController < ApplicationController
  def index
    @theateradmin = TheaterAdmin.where(user: current_user).first
    if @theateradmin.nil?
      redirect_to root_path
    else
      @theater = @theateradmin.theater
      @screens = @theater.screens
    end
    @screen = Screen.new
  end

  def create
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @theater = @theateradmin.theater
    @screen = Screen.create(screen_params)
    if @screen.save
      redirect_to admin_screens_path
    else
      render :index
    end
      
  end

  def edit
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @theater = @theateradmin.theater
    @screen = @theater.screens.find(params[:id])
  end

  def update
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @theater = @theateradmin.theater
    @screen = @theater.screens.find(params[:id])
    if @screen.update(screen_params)
      redirect_to admin_screens_path
    end
  end

  def destroy
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @theater = @theateradmin.theater
    @screen = @theater.screens.find(params[:id])
    if @screen.destroy
      redirect_to admin_screens_path
    end
  end


  def screen_params
    params.require(:screen).permit(:name, :seats, :theater_id)
  end

  
end
