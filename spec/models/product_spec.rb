require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do
    it "is valid with valid attributes" do
      category = Category.new(name: "Sporting Goods")
      product = Product.new(name: "Helmet", price: 50, quantity: 15, category: category)
      expect(product).to be_valid
    end
    it "is not valid without a name" do
      
    end
    it "is not valid without a price" do
      
    end
    it "is not valid without a quantity" do
      
    end
    it "is not valid without a category" do
      
    end

  end
end
