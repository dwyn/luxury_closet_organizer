class SessionsController < ApplicationController
  def home
  end


  def new
  end

  def create
    user = User.find_by(email: params[:email])
    #user = user.try(:authenticate, user_params[:password])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path,
        notice: "Log in successful!"
      else
        flash.now.alert = "Invalid email or password"
        render :new
      end
  end

   def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Log out successful!"
  end

  #def home
  #end


   private
  #def user_params
    #params.require(:user).permit(:email, :password)
  #end
end
