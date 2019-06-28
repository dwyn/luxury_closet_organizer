class SessionsController < ApplicationController


  def new
    @user = User.new
    render :login
  end

  def create
    user = User.find_by(email: params[:email])
    #user = user.try(:authenticate, user_params[:password])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to shoes_path
        #notice: "Log in successful!"
      else
        flash[:error] = "Invalid email or password"
        redirect_to '/login'
      end
  end

  def home
  end

  #logs out user
   def destroy
    session.clear
    redirect_to root_path, notice: "Log out successful!"
  end



   private
   
  #def user_params
    #params.require(:user).permit(:email, :password)
  #end
end
