class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Games.all
    render json: @game, status: 200
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @game }
    end
  end

  def edit
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end

end
