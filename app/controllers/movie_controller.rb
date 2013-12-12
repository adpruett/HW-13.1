class MovieController < ApplicationController
  def index
    @movies = Movie.all

    if params[:character].present?
      @movies = @movies.joins(:characters)
      @movies = @movies.where(
        characters: { name: params[:character]})
    end

    if params[:movie].present?
      @movies = @movies.where(
        movies: { name: params[:movie]})
    end

    @movies = @movies.order("year DESC")
  end

  def show
    @movie = Movie.find params[:id]
  end
end
