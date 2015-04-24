class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @show_photo = Photo.find(1)

  end
end
