class Admin::ScreensController < ApplicationController
  before_action :template

  def template
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @theater = @theateradmin.theater
  end

  def index 
    if @theateradmin.nil?
      redirect_to root_path
    else
      @theater = @theateradmin.theater
      @screens = @theater.screens
    end
    @screen = Screen.new
  end

  def create
    @screen = Screen.create(screen_params)
    if @screen.save
      redirect_to admin_screens_path
    else
      flash.now[:messages] = @screen.errors.full_messages[0]
      render :index
    end
  end

  def edit
    @screen = @theater.screens.find(params[:id])
  end

  def update
    @screen = @theater.screens.find(params[:id])
    if @screen.update(screen_params)
      redirect_to admin_screens_path
    end
  end

  def destroy
    @screen = @theater.screens.find(params[:id])
    if @screen.destroy
      redirect_to admin_screens_path
    end
  end

  def screen_params
    params.require(:screen).permit(:name, :seats, :theater_id)
  end
end
