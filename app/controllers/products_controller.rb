class ProductsController < ApplicationController

  def index
    # uses model and implicitly renders index that is picked up by erb
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

end
