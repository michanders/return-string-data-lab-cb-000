class ProductsController < ApplicationController

  def index
    @products = Products.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.find_or_create_by(prod_params)
    redirect to products_path

  end


  private

  def prod_params
    params.require(:product).permit(:name, :price, :description, :inventory)
  end

end
