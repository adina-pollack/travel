class HomeController < ApplicationController
  def index
    if @current_user
      redirect_to locations_path
    else
      @home_page = true
    end
  end
end
