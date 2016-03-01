class WorldController < ApplicationController
  before_action :set_world, only: :show

  def show
  end

  def index
    @worlds = World.all
  end

  private
  def set_world
    @world = World.find(params[:id])
  end

end
