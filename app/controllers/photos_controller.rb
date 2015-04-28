class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form
  end

  def create_row
    z=Photo.new
    z.source= params[:the_source]
    z.caption= params[:the_caption]
    z.save
  end


  def show
    @z = Photo.find(params["id"])
    @z.source=@z["source"]
    @z.caption=@z["caption"]
  end


end
