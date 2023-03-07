class GamesController < ApplicationController
  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(params_game)
    @game.user = current_user
    authorize @game
    if @drag.save
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
