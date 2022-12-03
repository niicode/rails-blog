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

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    respond_to do |format|
      format.html do
        if @post.save
          redirect_to "/users/#{@post.user.id}/posts/#{@post.id}"
        else
          render :new
        end
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :likes_counter, :comments_counter)
  end
end
