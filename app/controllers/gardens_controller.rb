class GardensController < ApplicationController
  before_action :set_garden, only: [:new, :create]
  skip_before_action :authenticate_user!, only: [:new, :create, :index]

  def index
    if params[:query_product].present?
      product = Product.find_by_name(params[:query_product])
      if product
        @gardens = product.gardens
      else
        @gardens = []
      end
    else
      @gardens = Garden.all
    end
  end

  def show

  end


  private

  def garden_params
    params.require(:garden).permit(:user_id, :name, :address, :detail)
  end

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end
end
