class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render({ :template => "actor_templates/index" })
  end
  def show
    @actor = Actor.where( :id => params[:id])[0]
    render({ :template => "actor_templates/show" })
  end
end
