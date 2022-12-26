class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end

  def show
    @user = current_user
    @logs = @user.logs
    @categories = @user.categories.distinct
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
