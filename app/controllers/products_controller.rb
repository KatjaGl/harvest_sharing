class ProductsController < ApplicationController
  before action:

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
  end

  def updated
  end

  def delete
  end

  def destroy
  end

  def edit
  end

  private

  def product_params
    params.require(:product).permit(:name, :category)
  end
end

end
