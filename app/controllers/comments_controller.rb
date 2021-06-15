class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    @new_comment = Comment.new
  end


  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    @new_comment = Comment.new
  end

  private

  def post_comment_params
    params.require(:comment).permit(:post_id, :user_id, :comment)
  end
end
