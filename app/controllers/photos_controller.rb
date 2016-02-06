class PhotosController < ApplicationController

  def show
    @photo = Photo.find(params[:id])
  end

  def new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save
    redirect_to @photo
  end

  private
    def photo_params
      params.require(:photo).permit(:path)
    end

end
