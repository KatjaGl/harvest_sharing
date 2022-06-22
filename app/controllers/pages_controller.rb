class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @gardens = Garden.first(4)
  end
end
