class GardensController < ApplicationController

def index
  @garden = Garden.all
end

def show
  @chatroom = Chatroom.new
  @garden = Garden.find(params[:id])
end


end
