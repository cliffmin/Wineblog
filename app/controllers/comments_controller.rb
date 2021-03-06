class CommentsController < ApplicationController

  def create 
  	#will look up the matching params variable
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create!(comment_params)
  	redirect_to @post
  end

  #need this for new rails security concerns. This will only allow these vars
  #to map to our :comment
  def comment_params
  	params.require(:comment).permit(:post_id, :comment, :text)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to @comment.post
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params[:comment])
    redirect_to @post
  end

  def edit
  end
end
