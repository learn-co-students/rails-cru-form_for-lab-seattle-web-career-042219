class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def index
    @artists = Artist.all
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
    set_artist
  end

  def update
    @artist = set_artist
    @artist.update(artist_params)
    redirect_to @artist
  end

  private

  def set_artist
      @artist = Artist.find(params[:id])
  end

  def artist_params
   params.require(:artist).permit(:name, :bio)
 end

end
