class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def authenticate
    redirect_to signin_path, :alert => 'You must be logged in to visit that page.' unless current_user
  end
end
