class AnswersController < ApplicationController
  skip_before_action :authenticate_user!, only: :login

  def index
    @song = Song.find(params[:song_id])
    @answers = policy_scope(Answer)
    @answers = Answer.where(song: @song)
  end

  def new
    @answer = Answer.new
    authorize @answer
    @song = Song.find(params[:song_id])
  end

  def create
    @song = Song.find(params[:song_id])
    user = current_user
    game = @song.game
    users_game = UsersGame.find_by(user: user, game: game)
    @answer = Answer.new
    @answer.users_game = users_game
    @answer.song = @song
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
