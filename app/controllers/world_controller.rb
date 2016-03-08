class WorldController < ApplicationController
  before_action :set_world, only: [:show, :click_check]

  def show
  end

  def index
    @worlds = World.all
  end

  def click_check
    x_coord = params[:x_coord].to_f
    y_coord = params[:x_coord].to_f
    character = params[:character]
    hitbox = @world.hitboxes.find_by_character(character)
    hit_status = ((x_coord >= hitbox.x_left) && (x_coord <= hitbox.x_right) && (y_coord >= hitbox.y_top) && (y_coord <= hitbox.y_bottom))
    render json: hit_status
  end

  private
  def set_world
    @world = World.find(params[:id])
  end

end
