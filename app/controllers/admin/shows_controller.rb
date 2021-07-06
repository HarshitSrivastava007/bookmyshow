class Admin::ShowsController < ApplicationController
  def index
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @theater = @theateradmin.theater
    @screens = @theater.screens
    @show = Show.new
  end

  def create
    @theateradmin = TheaterAdmin.where(user: current_user).first
    @theater = @theateradmin.theater
    @show = Show.create(show_params)
    if @show.save
      redirect_to admin_shows_path
    else
      flash.now[:messages] = @show.errors.full_messages[0]
      render :index
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      redirect_to admin_shows_path
    end
  end

  def destroy
    @show = Show.find(params[:id])
    if @show.destroy
      redirect_to admin_shows_path
    end
  end

  def show_params
    params.require(:show).permit(:movie_id, :screen_id, :date, :amount, :time)
  end

end
