class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @z = Photo.find(params["id"])
    @z.source=@z["source"]
    @z.caption=@z["caption"]
  end
end
