class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
    #@song = Song.find(params[:id])
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to @song
  end

  #def edit
    #@song = Song.find(params[:id])
  #end

  def update
    #@song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to @song
  end


  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
