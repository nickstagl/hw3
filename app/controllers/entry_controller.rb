class EntryController < ApplicationController
  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" =>@entry["place_id"]})
  end
  def new

  end
  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["created_at"] = Date.current
    @entry["description"] = params["description"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
  end

end
