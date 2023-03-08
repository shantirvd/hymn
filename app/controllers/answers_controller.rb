class AnswersController < ApplicationController
  def index
    @song = Song.find(params[:song_id])
    @answers = policy_scope(Answer)
    @answers = Answer.where(song: @song)
  end
end
