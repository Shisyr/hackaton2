class SubCategoriesController < ApplicationController
  before_action :set_sub, only: [:show, :edit, :update, :destroy]
  def index
    @sub_categories = SubCategory.all
  end
  def show
    @posts = @sub_category.posts
  end
  def edit
  end
  def update
    if(@sub_category.update_attributes(sub_params))
      redirect_to @sub_category
    else
      render "edit"
    end
  end
  def destroy
    @sub_category.destroy
    redirect_to sub_categories_path
  end
  def new
    @sub_category = SubCategory.new(category_id: params[:id])
  end
  def create
    @sub_category = SubCategory.new(sub_params)
    if(@sub_category.save)
      redirect_to sub_categories_path
    else
      render "new"
    end
  end
  private
  def sub_params
    params.require(:sub_category).permit(:title, :category_id)
  end
  def set_sub
    @sub_category = SubCategory.find(params[:id])
  end
end
