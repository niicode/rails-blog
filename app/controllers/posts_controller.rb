class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = Post.where(user_id: params[@user.id])
    @posts = @user.posts
  end

  def show
    @posts = Post.find(params[:id])
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end
end
