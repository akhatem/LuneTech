class FilmsController < ApplicationController
  def index
    @films = Film.all;
    @films = @films.joins(:opinions).order(stars: :desc);

    if params[:search]
      @search_term = params[:search];
      @films = @films.search_by(@search_term)
    end

  end

  def import_films
    Film.import(params[:films_file])
    redirect_to films_path, notice: "Movies imported successfully";
  end

  def import_review
    Review.import(params[:reviews_file])
    redirect_to films_path, notice: "Reviews imported successfully";
  end


  private

  def films_params
    params.require(:film).permit(:actor, :search)
  end
end
