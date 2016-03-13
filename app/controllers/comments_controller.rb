class CommentsController < ApplicationController

  def create
    @photo = Photo.find(params[:photo_id])
    if comment_params[:body] != "" 
      @comment = @photo.comments.create(comment_params)
      @comment.user = @user
      @comment.save
    end 
    redirect_to photo_path(@photo)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

end
