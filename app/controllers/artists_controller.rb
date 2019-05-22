class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    artist_params = params[:artist]
    @artist = Artist.create(name: artist_params[:name], bio: artist_params[:bio])
    redirect_to @artist
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    artist_params = params[:artist]
    @artist.update(name: artist_params[:name], bio: artist_params[:bio])
    redirect_to @artist
  end
end
