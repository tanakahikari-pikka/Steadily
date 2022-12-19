class UsersController < ApplicationController
  def index
    @user = current_user
    @logs = @user.logs
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
