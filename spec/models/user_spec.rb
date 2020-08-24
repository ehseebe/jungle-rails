require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "is valid with valid attributes" do
      user = User.new(email: "alyssa@sidewalkplants.com", first_name: "Alyssa", last_name: "BT", password: "apple!123", password_confirmation: "apple!123")
    end
  end

  describe ".authenticate_with_credentials" do
    
  end
end
