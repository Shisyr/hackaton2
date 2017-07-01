class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @post = Post.all
  end
  def show
  end
  def edit
  end
  def update
    if(@post.update_attributes(post_params))
      redirect_to @post
    else
      render :edit
    end
  end
  def destroy
    @post.destroy
    redirect_to post_path
  end
  def new
    @post = Post.new(sub_category_id: params[:id])
  end
  def create
    @post = Post.new(post_params)
    if(@post.save)
      redirect_to @post
    else
      render "new"
    end
  end
  private
  def post_params
    params.require(:post).permit(:description, :sub_category_id, :image)
  end
  def set_post
    @post = Post.find(params[:id])
  end
end
