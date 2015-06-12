class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def new_form

	

end

def create_row

	

end

def show

	@photo = Photo.find(params[:id])
 

end



end
