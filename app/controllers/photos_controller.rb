class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


  def new_form

  end

  def show

    @theid = params[:id]
    @image = Photo.find_by({ :id => @theid })



  end



  def create_row

    p = Photo.new
    p.source = params[:the_source].downcase
    p.caption = params[:the_caption]
    p.save

    redirect_to("http://localhost:3000/photos/#{p.id}")

  end


  def destroy

    @theid = params[:id]
    @image = Photo.find_by({ :id => @theid })
    @image.destroy
    redirect_to("http://localhost:3000/photos")

  end

  def edit_form

    @theid = params[:id]
    @image = Photo.find_by({ :id => @theid })


  end

  def update_row

    p = Photo.find(params[:id])
    p.source = params[:the_source].downcase
    p.caption = params[:the_caption]
    p.save

    redirect_to("http://localhost:3000/photos/#{p.id}")

  end






end
