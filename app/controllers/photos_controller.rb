class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    ident = params[:id]

    @photo = Photo.find(ident)

  end

  def new_form
  end




end
