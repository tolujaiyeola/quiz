class CommentsController < ApplicationController
  def create
    comment_params = params.require(:comment).permit(:body)
    @idea_post = IdeaPost.find(params[:idea_post_id])
    @comment = @idea_post.comments.new(comment_params)

    if @comment.save
      redirect_to idea_post_path(@idea_post)
    end
  end

end
