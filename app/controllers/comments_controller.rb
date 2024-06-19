class CommentsController < ApplicationController
  before_action :set_post
  before_action :set_comment, only: [:edit, :update, :destroy]
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

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to post_url(@post), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.turbo_stream
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment.destroy
    redirect_to @post
  end

  def edit

  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

end
