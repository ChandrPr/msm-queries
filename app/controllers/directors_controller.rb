class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render({ :template => "director_templates/index" })
  end
  def show
    @director = Director.where( :id => params[:id])[0]
    @movies = Movie.where(:director_id => params[:id])
    render({ :template => "director_templates/show" })
  end
end
