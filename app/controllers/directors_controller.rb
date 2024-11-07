class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render({ :template => "director_templates/index" })
  end
end
