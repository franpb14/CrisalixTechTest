class UsersController < ApplicationController
  #TODObefore_action :logged_in_user

  def doctors
    @doctors = User.where(role: 1).page(params[:page]).per(10)
    @doctors = @doctors.where(full_query) if full_query
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = 'Welcome to the app!'
      redirect_to appointments_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :surname, :email, :city, :role, :password, :password_confirmation)
  end

  def full_query
    if params[:query_city].present?
      "CITY LIKE '%#{params[:query_city]}%'"
    elsif params[:query_name].present?
      "NAME LIKE '%#{params[:query_name]}%' OR SURNAME LIKE '%#{params[:query_name]}%'"
    end
  end
end