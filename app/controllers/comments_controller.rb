class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.new(comment_params) do |comment|
      comment.user = current_user
    end
    if @comment.save
      flash[:notice] = "Comment successfully created"
      redirect_to @post
    else
      flash[:error] = @comment.errors.map(&:full_message)
      redirect_to @post
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

end
