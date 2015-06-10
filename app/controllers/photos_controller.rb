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

def edit_form
    p = Photo.find(params[:id])
    @p_source = p["source"]
    @p_caption = p["caption"]
    @p_id = p["id"]
end

def update_row
    p = Photo.find(params[:id])
    p.source = params[:the_source].downcase
    p.caption = params[:the_caption].downcase.capitalize
    p.id = params[:id]
    p.save
    redirect_to("http://localhost:3000/photos/" + p.id.to_s)
end

end
