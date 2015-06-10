class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    p = Photo.find(params["id"])
    @caption = p.caption
    @source = p.source
    @id = p.id
  end

  def new_form
  end

  def create_row
      p=Photo.new
      p.caption=params[:the_caption]
      p.source=params[:the_source]
      p.id=params[:the_id]
      p.save
      redirect_to("http://localhost:3000/photos/#{p.id}")
  end

  def edit_form
    p=Photo.find(params["id"])
    @caption=p.caption
    @source=p.source
    @id=p.id
  end

  def update_row
    p = Photo.find(params[:id])
    p.caption=params[:the_caption]
    p.source=params[:the_source]
    p.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    photo = Photo.find(params["id"])
    photo.destroy
    redirect_to("http://localhost:3000/photos")
  end
end
