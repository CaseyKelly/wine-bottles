class RegistrationsController < ApplicationController
  before_action :set_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_wine_bottles_path(@user), notice: "Thanks for signing up."
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to user_wine_bottles_path, notice: 'User was successfully deleted.'
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
    def set_user
      @user = User.find_by(params[:current_user])
    end
end
