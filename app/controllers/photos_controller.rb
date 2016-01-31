class PhotosController < ApplicationController
  def new

  end
  def create
    render plain: params[:photo].inspect
  end
end
