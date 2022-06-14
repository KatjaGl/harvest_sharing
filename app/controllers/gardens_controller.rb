class GardensController < ApplicationController

def index
  @garden = Garden.all
end

def show
end


end
