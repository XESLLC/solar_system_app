class WelcomeController < ApplicationController

  def new

  @user = User.new

  end

  def create

    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to solar_systems_path
    else
      render :index
    end

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end




end
