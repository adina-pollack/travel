class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end
  def show
    @location = Location.find(params[:id])
  end
  def new
    @location = Location.new
  end
  def create
    @location = Location.create(location_params)
    # redirect_to @user
  end



  private
  def location_params
    params.require(:location).permit(:name)
  end
end
