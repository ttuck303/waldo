class HighscoreController < ApplicationController
  def new
    @highscore = Highscore.new
  end

  def index
    @highscores = Highscore.all.order(:time).limit(20)
  end

  def create
    @highscore = Highscore.new(highscore_params)
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
