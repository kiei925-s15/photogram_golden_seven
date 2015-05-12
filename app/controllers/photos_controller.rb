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
    z.caption = params["the_caption"]
    # where are these strings: "the_caption" and "the_source" pulling from? Look in new form view - coming from the name field in the form.
    z.source = params["the_source"]
    z.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
     @photo_destroy = Photo.find_by({:id => params["id"]})
     @photo_destroy.destroy
     redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    z = Photo.find(params[:id])
    @img = z.source
    @cap = z.caption
    @id = z.id
    render 'edit_form'
  end


  def update_row
    z = Photo.find(params[:id])
    z.caption = params["the_caption"]
    z.source = params["the_source"]
    z.save
    redirect_to("http://localhost:3000/photos")
  end
end
