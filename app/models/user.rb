class User < ActiveRecord::Base

  has_secure_password 
  
  validates :email, presence: true
  validates :name, presence: true
  validates :password_digest, presence: true, length: { minimum: 6 }

end
