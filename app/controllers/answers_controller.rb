class AnswersController < ApplicationController
  def index
    @song = Song.find(params[:song_id])
    @answers = policy_scope(Answer)
    @answers = Answer.where(song: @song)
  end

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
    @answer = Answer.new
    @answer.user = user
    @answer.game = game
    authorize @answer

    raise
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
