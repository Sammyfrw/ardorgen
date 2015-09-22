class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.password == @user.password_confirmation && @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to sign_up_path
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
