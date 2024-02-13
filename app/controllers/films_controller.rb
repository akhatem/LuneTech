class FilmsController < ApplicationController
  def index
    @films = Film.all;

    if params[:search]
      @search_term = params[:search];
      @films = @films.search_by(@search_term)
    end

  end


  private

  def films_params
    params.require(:film).permit(:actor, :search)
  end
end
