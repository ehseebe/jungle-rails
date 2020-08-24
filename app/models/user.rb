class User < ActiveRecord::Base

  has_secure_password 
  
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true
  validates :password_digest, presence: true, confirmation: true, length: { minimum: 6 }

end
