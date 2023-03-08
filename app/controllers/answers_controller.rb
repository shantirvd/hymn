class AnswersController < ApplicationController
  skip_before_action :authenticate_user!, only: :login


  def new
    @answer = Answer.new
    @song = Song.find(params[:song_id])
    authorize @answer
  end

  def create
    user = current_user
    @song = Song.find(params[:song_id])
    game = song.game
    user_game = User_game.where(user_id: user, game_id: game)
    @answer = Answer.new(user_game: user_game, song_id: @song)
    authorize @answer

    if @answer.save
      redirect_to song_answers_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def anwser_params
    params.require(:answer).permit(:time, :user_game, :song_id)
  end
end
