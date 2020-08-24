class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    #stores all emails in lowercase to avoid errors
    @user.email.downcase!

    if @user.save
      session[:user_id] = user.id
      flash[:notice] = "Account created successfully!"
      redirect_to '/'
    else
      flash[:notice] = "Oops, a user is already registered with this email!"
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
