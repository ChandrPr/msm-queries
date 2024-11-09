class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render({ :template => "director_templates/index" })
  end
  def age_extreme
    @case = params[:age_extreme]
    if @case == "youngest"
      @director = Director.where.not({ :dob => nil}).order({:dob => :desc})[0]
    else
      @director = Director.where.not({ :dob => nil}).order({:dob => :asc})[0]
    end
    render({ :template => "director_templates/ageist" })
  end
  def show
    @director = Director.where(:id => params[:id])[0]
    render({ :template => "director_templates/show" })
  end
end
