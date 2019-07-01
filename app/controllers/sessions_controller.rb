class SessionsController < ApplicationController


  def new
    @user = User.new
    render :login
  end

  def create
    @user = User.find_by(email: params[:email])

      if @user && @user.authenticate(params[:email][:password])
        session[:user_id] = @user.id
        redirect_to shoes_path
        #notice: "Log in successful!"
      else
        flash[:error] = "Invalid email or password"
        redirect_to '/login'
      end
  end

  #omniauth login
  #def fbcreate
    #@user = User.find_or_create_by(uid: auth['uid']) do |u|
      #u.username = auth['info']['name']
      #u.email = auth['info']['email']
      #u.password = auth['uid']   # Secure Random Hex
    #end
    #byebug

    #session[:user_id] = @user.id

    #redirect_to '/pets'
  #end


  def home
  end

  #logs out user
   def destroy
    session.clear
    redirect_to '/', notice: "Log out successful!"
  end



   private

   #def auth
    #request.env['omniauth.auth']
  #end

end
