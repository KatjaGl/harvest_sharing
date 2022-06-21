class GardensController < ApplicationController
  before_action :set_garden, only: %i[new create]
  skip_before_action :authenticate_user!, only: %i[show index]

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
    # @chatroom = Chatroom.new
    @garden = Garden.find(params[:id])
    marker =
      {
        lat: @garden.latitude,
        lng: @garden.longitude,
        info_window: render_to_string(partial: "info_window", locals: { garden: @garden
          }),
          #image_url: helpers.asset_url () #custom marker
      }
      @markers = []
      @markers.push(marker)
  end

  private

  def garden_params
    params.require(:garden).permit(:user_id, :name, :address, :detail)
  end

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end
end
