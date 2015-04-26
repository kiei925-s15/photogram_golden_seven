class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
  	@show_photo = Photo.find(params["id"])
  end

  def new


  end

  def create_row
  	z = Photo.new

  	z.caption = params[:the_caption]
  	z.source = params[:the_source]

  	z.save

  	redirect_to("http://localhost:3000/photos")

  end
  def destroy

  	Photo.find(params["id"]).destroy

		redirect_to("http://localhost:3000/photos")
  end
  def edit_form
    z = Photo.find(params["id"])

    @caption = z.caption
    @source = z.source
    @id = z.id
  end

  def update_row
    z = Photo.find(params[:id])

    z.caption = params["the_caption"]
    z.source = params["the_source"]

    z.save

    redirect_to("http://localhost:3000/photos")
  end



end
