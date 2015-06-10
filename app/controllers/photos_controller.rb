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

  def edit_form
    @edit_row =Photo.find(params[:id])
    @row_id = params[:id]
  end

  def update_photo
    update_row = Photo.find(params[:id])
    update_row.caption = params[:the_caption]
    update_row.source = params[:the_source]
    update_row.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    destroy_row = Photo.find(params[:id])
    destroy_row.destroy
    redirect_to("http://localhost:3000/photos")
  end

end
