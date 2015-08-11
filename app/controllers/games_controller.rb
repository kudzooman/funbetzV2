class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params.require(:game).permit(:game_number, :favorite, :spread, :underdog, :favorite_score, :underdog_score))
    if @game.save
      flash[:notice] = "Game has been saved."
      redirect_to @game
    else
      flash[:error] = "Problem."
      render :new
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(params.require(:game).permit(:game_number, :favorite, :spread, :underdog, :favorite_score, :underdog_score))
      flash[:notice] = "Game updated"
      redirect_to @game
    else
      flash[:error] = "There was a problem"
      render :edit
    end
  end

end
