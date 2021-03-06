class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:login][:email])
    if @user && @user.authenticate(params[:login][:password])
      login(@user)
      redirect_to @user
    else
      flash[:error] = "Email or password is invalid"
      redirect_to new_login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end