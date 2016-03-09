class HighscoreController < ApplicationController
  def new
  end

  def index
    @highscores = Highscore.all.order(:time).limit(20)
  end

  def create
  end
end
