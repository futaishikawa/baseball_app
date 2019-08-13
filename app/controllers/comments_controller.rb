class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post
    @comment.destroy
    redirect_back(fallback_location: root_path)
  end

  private

    def comment_params
      params.required(:comment).permit(:user_id, :post_id, :comment)
    end

end
