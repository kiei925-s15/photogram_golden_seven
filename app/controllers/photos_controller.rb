class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
end

def new_form
end

def create_row
    p = Photo.new
    p.source = params[:the_source].downcase
    p.caption = params[:the_caption].downcase.capitalize
    p.save
    redirect_to("http://localhost:3000")
end

def show
    @p = Photo.find(params[:id])
    @p_source = @p["source"]
    @p_caption = @p["caption"]
end

def delete_row
    p = Photo.find(params[:id])
    p.destroy
    p.save
    redirect_to("http://localhost:3000")
end
end
