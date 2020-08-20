class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by_email(params[:email])
    # checks user exists + password is correct
    if user && user.authenticate(params[:password])
      # saves user id in browser cookie so user can navigate freely
      session[:user_id] = user.id
      redirect_to '/', :notice => "Welcome back!"
    else
      flash[:notice] = "Oops, incorrect username/password!"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
