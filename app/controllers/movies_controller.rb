class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render({ :template => "movie_templates/index" })
  end
  def show
    @movie = Movie.where( :id => params[:id])[0]
    render({ :template => "movie_templates/show" })
  end
end
