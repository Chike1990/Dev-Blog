class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.order(id: :desc).limit(2).includes(:comments, comments: [:author])
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:author)
    @user = @post.author
  end

  def new
    @post = Post.new
    @user = User.find(params[:user_id])
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :text))
    @post.author = current_user
    if @post.save
      redirect_to user_post_path(params[:user_id], @post)
    else
      @user = User.find(params[:user_id])
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
