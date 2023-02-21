class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    current_user.recently_viewed_products << @product.id
  end
end
