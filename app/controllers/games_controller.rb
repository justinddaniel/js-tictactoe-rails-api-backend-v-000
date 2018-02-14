class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Games.all

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
  end

end
