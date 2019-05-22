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
    @song = Song.create(name: params[:song][:name])
    redirect_to song_path(@song)
  end

  def edit
    song_finder
  end

  def update
    @song = Song.create(song_params)
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end

  def song_finder
    @song = Song.find(params[:id])
  end
end
