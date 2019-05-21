require 'pry'

class SongsController < ApplicationController

  def show
    @song = find_song
    @genre = @song.genre
    @artist = @song.artist
  end

  def new
    @song = Song.new
  end

  def create
    #binding.pry
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = find_song
  end

  def update
    @song = find_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end 

  private

  def find_song
    Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
