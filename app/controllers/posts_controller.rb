# Controller for Article actions
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :index]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def index
    @posts = Post.paginate page: params[:page], per_page: 10
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    @post.user = current_user

    if @post.save
      flash[:success] = 'Your post was saved successully.'
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update post_params
      flash[:success] = 'Your post was updated successfully.'
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      flash[:danger] = 'Your post was removed successfully.'
    else
      flash[:warning] = 'Your post could not be removed.'
    end

    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, category_ids: [])
  end

  def set_post
    @post = Post.find params[:id]
  end

  def require_same_user
    return if current_user?(@post.user) || current_user.admin?

    flash[:danger] = 'You can only edit or delete your own posts.'
    redirect_to posts_path
  end
end
