class GamesController < ApplicationController
  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(params_game)
    @game.user = current_user
    authorize @game
    if @game.save
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @game = Game.find(params[:id])
    authorize @game
  end

  private

  def params_game
    params.require(:game).permit(:name, :spotify_playlist_id)
  end
end
