class IdeaPostsController < ApplicationController
  
  # before_action :authenticate_user!, except: [:index, :show]
  def index
    @idea_posts = IdeaPost.all
  end

  def new
    @idea_post = IdeaPost.new
  end

  def create
    idea_post_params = params.require(:idea_post).permit(:title, :body)
    @idea_post = IdeaPost.new(idea_post_params)
    if @idea_post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @idea_post = IdeaPost.find(params[:id])
    @comment = Comment.new
    @comments = @idea_post.comments.all

  end

end
