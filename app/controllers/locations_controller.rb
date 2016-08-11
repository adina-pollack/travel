class LocationsController < ApplicationController
  def index
    @locations = Location.all
    if params[:search]
      @locations = Location.search(params[:search]).order("created_at DESC")
    else
      @locations = Location.all.order('created_at DESC')
    end
  end
  def show
    @location = Location.find(params[:id])
    @message = Message.new

  end


  # private
  # def location_params
  #   params.require(:location).permit(:name)
  # end
end
