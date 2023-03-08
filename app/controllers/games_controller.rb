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
    raise

    unless current_user == @game.user || UsersGame.find_by(user: current_user, game: @game).exists?
      users_game = UsersGame.new
      users_game.game = @game
      users_game.user = current_user
      users_game.save!
    end
  end

  private

  def params_game
    params.require(:game).permit(:name, :spotify_playlist_id)
  end
end
