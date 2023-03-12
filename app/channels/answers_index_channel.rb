class AnswersIndexChannel < ApplicationCable::Channel
  def subscribed
    song = Song.find(params[:song_id])
    stream_for song
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
