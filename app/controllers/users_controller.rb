class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @location = @user.locations.build
    @location_options = Location.all.map { |l| [l.country, l.id]}
  end

  def create
    @user = User.create!(user_params)
    session[:user_id] = @user.id
    @user.locations << Location.find(params[:location_id])
    @user.save!
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])

  end

  def edit
    @user = User.find(params[:id])

    @location_options = Location.all.map { |l| [l.country, l.id]}
    redirect_to root_path unless @current_user == @user
  end

  def update
    @user = User.find(params[:id])
    @user.locations << Location.find(params[:location_id])
    redirect_to root_path unless @current_user == @user


    @user.update!(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :first_name, :email, :last_name,
    :location_id)
  end

end
