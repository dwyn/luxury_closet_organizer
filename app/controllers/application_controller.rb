class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #def home
    #render :index
  #end

private


  def current_user
    if session[:user_id]
      @current_user ||  User.find(session[:user_id])
    end
  end

  helper_method :current_user

  def authenticate_user!
    redirect_to login_path unless current_user
  end
  

  def logged_in?
    !!session[:user_id]
  end

  def not_logged_in
    if !logged_in?
      redirect_to root_path
    end
  end

  #def is_admin?
    #!!User.find(session[:user_id]).admin ? true : false
  #end
end
