class UsersController < ApplicationController
  before_action :correct_user, only: [:edit]

  def index
    @user = current_user
    @users = User.all.page(params[:page]).per(8)
  end

  def show
    @user = User.find(params[:id])
    @logs = @user.logs.page(params[:page]).per(8)
    @categories = @user.categories.distinct
    @category_logs = @user.categories.group(:name).count
    @category_study_records = @user.categories.group(:name).sum(:study_record)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to user_path(user)
    else
      @user = User.find(params[:id])
      render :edit
    end
  end


  private

  def correct_user
    @user = User.find(params[:id])
    if @user.id!= current_user.id
      redirect_to user_path(current_user)
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
