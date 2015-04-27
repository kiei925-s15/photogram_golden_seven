class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_show = Photo.find_by({:id => params["id"]})
    @img = @photo_show.source
    @cap = @photo_show.caption
    render 'show'
  end

  def new_form
    render 'new_form'
  end

  def create_row
    z = Photo.new
    z.caption = params[:photo_caption]
    z.source = params[:photo_image_url]
    z.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
     @photo_destroy = Photo.find_by({:id => params["id"]})
     @photo_destroy.destroy
     redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @edit = Photo.find_by({:id => params["id"]})
    @img = @edit.source
    @cap = @edit.caption
    render 'edit_form'
  end

  def update_row
    z = Photo.find_by({:id => params["id"]})
    z.caption = params[:the_new_caption]
    z.source = params[:the_new_source]
    z.save
    redirect_to("http://localhost:3000/photos")
  end
end
