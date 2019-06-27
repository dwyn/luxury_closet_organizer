class UsersController < ApplicationController
#this method instantiates an empty new user object and renders the sign_up form
#once a user is saved, they are redirected to the root url
  #code...

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    session[:user_id] = @user.id #stores @user.id in a cookie session
    redirect_to root_path
    #flash message to welcome new users
    notice = "Welcome to your Luxury Closet Organizer!"
  else
    render "new"
  end
end

def show
end

def update
end

private

def user_params
  params.require(:user).permit(:name, :email, :password)
end
end