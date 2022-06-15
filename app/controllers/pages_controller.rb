class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @gardens = Garden.last(3)
  end


end
