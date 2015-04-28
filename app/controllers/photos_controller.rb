class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form

  end

  def create_row
  	z = Photo.new
  	z.caption = params[:caption]
  	z.source = params[:source]

  	z.save

  	redirect_to("http://localhost:3000/photos")

  end

  def show
  	@i = Photo.find_by({ :id => params[:id] })
  end

  def destroy
  	@i = Photo.find(params[:id])
  	@i.destroy

  	@i.save
  	redirect_to("http://localhost:3000/photos")

  end

  def edit_form
  	@i = Photo.find(params[:id])

  end

  def update_row
  	#z = Photo.find(params[:id])

  	#@i.save
  	# z.caption = params[:caption]
  	# z.source = params[:source]

  	#z.save

  	redirect_to("http://localhost:3000/photos/")

  end



end
