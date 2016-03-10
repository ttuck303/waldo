class HighscoreController < ApplicationController

  def new
    @world = World.find(params[:world_id])
    @highscore = @world.highscores.new
  end

  def index
    @world = World.find(params[:world_id])
    @highscores = Highscore.where(world_id: params[:world_id]).order(:time).limit(20)
  end

  def create
    @world = World.find(params[:world_id])
    @highscore = @world.highscores.new(highscore_params)
    if @highscore.save
      redirect_to world_highscore_index_path(world: highscore_params[:world_id]) # need to somehow get the world in there
    else
      render 'new'
    end
  end

  private

  def highscore_params
    params.require(:highscore).permit(:name, :time, :world_id)
  end

end
