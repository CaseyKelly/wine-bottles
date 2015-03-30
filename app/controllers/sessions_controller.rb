class SessionsController < ApplicationController
  before_action :set_user

  def new
  end

  def create
    @user = User.find_by(params[:user_id])
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_wine_bottles_path(@user), notice: 'Welcome back, stranger!'
    else
      flash[:login_alert] = "Username / password combination is invalid"
      redirect_to signin_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path, notice: "We're sorry to see you go!"
  end

  private
    def set_user
      @user = User.find_by(params[:current_user])
    end
end
