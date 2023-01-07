class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @category = Category.new
    @categories = Category.all.page(params[:page]).per(8)
  end

  def show
    @user = current_user
    @categories = Category.all
    @category = Category.find(params[:id])
    @logs = @category.logs.page(params[:page]).per(8)
    @logs_all = @category.logs
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      @categories = Category.all.page(params[:page]).per(8)
      render 'index'
    end
  end
  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
