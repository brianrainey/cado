class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def img
    photo = Photo.find(params[:id])
    send_file("#{Rails.root}/photos/#{photo.path}",
              type: "image/jpeg",
              disposition: 'inline')
  end

  private
    def photo_params
      params.require(:photo).permit(:path)
    end

end
