class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    song_finder
  end
  
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to songs_path
  end

  def edit
    song_finder
  end

  def update
    song_finder
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit!
  end

  def song_finder
    @song = Song.find(params[:id])
  end
end
