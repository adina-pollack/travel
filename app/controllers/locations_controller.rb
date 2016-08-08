class LocationsController < ApplicationController
  def index
    @location = Location.all
  end

end
