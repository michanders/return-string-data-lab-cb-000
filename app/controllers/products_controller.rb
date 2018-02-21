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

  def inventory
    product = Product.find(params[:id])
    render plain: product.inventory > 0 ? true : false
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end


  private

  def prod_params
    params.require(:product).permit(:name, :price, :description, :inventory)
  end

end
