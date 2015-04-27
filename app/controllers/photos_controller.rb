class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

  def show
    @show_photo = Photo.find_by({:id => params[:id]})
  end

  def new_form
  end

  def create_row
    new_row = Photo.new
    new_row.caption = params[:the_caption]
    new_row.source = params[:the_source]
    new_row.save
    redirect_to("http://localhost:3000/photos")
  end

end
