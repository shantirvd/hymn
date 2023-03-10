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
    # Find corresponding songs
    playlist_uri = @game.spotify_playlist_id
    # Decomposing the URI
    spotify_playlist_id = playlist_uri[17..-1]
    # Spotify API call for all tracks
    spotify_playlist = RSpotify::Playlist.find("playlist", "#{spotify_playlist_id}")
    tracks = spotify_playlist.tracks
    # Create associated songs
    tracks.each do |track|
      song = Song.new
      song.game = @game
      song.title = track.name
      song.album = track.album.name
      song.artist = track.artists.first.name
      song.spotify_track_id = track.uri
      song.save!
    end
  end

  def show
    @game = Game.find(params[:id])
    authorize @game

    unless current_user == @game.user || !UsersGame.find_by(user: current_user, game: @game).nil?
      users_game = UsersGame.new
      users_game.game = @game
      users_game.user = current_user
      users_game.save!
    end

    @game.finished! if params[:status] == "finished"
  end

  private

  def params_game
    params.require(:game).permit(:name, :spotify_playlist_id)
  end
end
