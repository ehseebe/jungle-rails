class User < ActiveRecord::Base

  has_secure_password 
  
  validates :email, uniqueness: { case_sensitive: false }, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, confirmation: true, length: { minimum: 6 }

  def authenticate_with_credentials(email, password) 
    @user = User.find_by(email: email)
    if @user && @user.authenticate(password.downcase)
      @user
    else
      nil
    end
  end

end
