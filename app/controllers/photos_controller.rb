class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end
  
  def show
  	@show_photo = Photo.find(params["id"])
  end

  def new_form

  end

  def create

  end
end
