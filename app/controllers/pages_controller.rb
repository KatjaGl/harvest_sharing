class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # @gardens = Garden.first(4)
    current_user_favorites = current_user.favorites_by_type('Garden') if current_user.present?
    if current_user_favorites.present?
      @gardens = []
      gardens_id = []
      current_user_favorites.each do |favorite|
        gardens_id << favorite.favoritable_id
      end
      gardens_id.each do |garden|
        @gardens << Garden.find(garden)
      end
    else
      @sugg_gardens = Garden.all.sample(4)
    end
  end
end
