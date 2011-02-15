class PeopleController < ApplicationController
  def autocomplete
    render :text => Person.autocomplete(params[:q].capitalize)  
  end

  def index
    
  end
end
