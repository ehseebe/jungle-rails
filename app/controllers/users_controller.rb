class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    #stores all emails in lowercase to avoid errors
    @user.email.downcase!
   
    @user.save

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Account created successfully!"
      redirect_to '/'
    else
      flash[:notice] = "Oops, we couldn't create an account with those credentials! Please try again."
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
