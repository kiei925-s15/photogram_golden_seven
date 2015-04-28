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

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to("http://localhost:3000/photos")
end

  def edit_form
    @photo = Photo.find(params["id"])
    @photo.source=@photo["source"]
    @photo.caption=@photo["caption"]
    @photo.save
  end

  def update_row
    update_photo= Photo.find(params[:id])
    update_photo.caption=@photo.caption
    update_photo.save
redirect_to("http://localhost:3000/photos/:id")
  end
end

