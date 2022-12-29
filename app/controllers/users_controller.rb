class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end

  def show
    @user = current_user
    @logs = @user.logs
    @categories = @user.categories.distinct
    @category_logs = @user.categories.group(:name).count
    @category_study_records = @user.categories.group(:name).sum(:study_record)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
