class FavoritesController < ApplicationController
  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    redirect_to favorite_path(@favorite) if @favorite.save
  end

  private

  def favorite_params
    params.require(:favorite).permit(:garden_id, :user_id)
  end
end
