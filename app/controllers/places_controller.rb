class PlacesController < ApplicationController
  def index
    #find all Places rows
    @places = Place.all
    #render places/index
  end

  def show
    #find a place
    @id = params["id"]
    @place = Place.find_by({"id" => @id})
    
    #render places/show view with details about Place
    #
  end

  def create
    place = Place.new
    place["name"] = params["name"]

    place.save
    #redirect user
    redirect_to "/places"
  end
  def new

    #render view with new Place form
  end
end
