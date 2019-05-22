class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    artist_finder
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    # @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    artist_finder
  end

  def update
    @artist = Artist.create(artist_params)
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

 private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def artist_finder
    @artist = Artist.find(params[:id])
  end
end
