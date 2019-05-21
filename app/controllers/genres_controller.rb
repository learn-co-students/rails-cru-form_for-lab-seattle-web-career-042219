class GenresController < ApplicationController


  def new
    @genre = Genre.new
  end

def index
  @genres = Genre.all
end
def show
  set_genre
end
  def create
    @genre = Genre.create(genre_params)
    redirect_to @genre
  end

  def edit
    set_genre
  end

  def update
    @genre = set_genre
    @genre.update(genre_params)
    redirect_to @genre
  end


    private
    def set_genre
      @genre = Genre.find(params[:id])
    end

    def genre_params
     params.require(:genre).permit(:name)
   end
end
