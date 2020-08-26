class SessionsController < ApplicationController

  def new
  end

  def create
    # checks user exists + password is correct
    if @user = User.authenticate_with_credentials(params[:email], params[:password])
      # saves user id in browser cookie so user can navigate freely
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/login'
      flash[:notice] = "Oops, incorrect username/password!"
    end
  end

  def destroy
    session[:user_id] = nil
    update_cart({})
    redirect_to '/login'
  end

end
