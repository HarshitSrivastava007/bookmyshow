class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
    @cities = City.all
  end

  def show
    @theater = Theater.find(params[:id])
  end

end
