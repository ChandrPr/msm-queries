class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render({ :template => "director_templates/index" })
  end
  def info
    @director = Director.where( :id => params[:id])[0]
    @movies = Movie.where(:director_id => params[:id])
    render({ :template => "director_templates/info" })
  end
end
