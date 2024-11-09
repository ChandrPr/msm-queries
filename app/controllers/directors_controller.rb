class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render({ :template => "director_templates/index" })
  end
  def youngest
    @director = Director.where.not({ :dob => nil}).order({:dob => :desc})[0]
    @case = "youngest"
    render({ :template => "director_templates/ageist" })
  end
  def eldest
    @director = Director.where.not({ :dob => nil}).order({:dob => :asc})[0]
    @case = "eldest"
    render({ :template => "director_templates/ageist" })
  end
  def show
    @director = Director.where(:id => params[:id])[0]
    render({ :template => "director_templates/show" })
  end
end
