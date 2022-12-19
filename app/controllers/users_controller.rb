class UsersController < ApplicationController
  def index
    @user = current_user
    @logs = @user.logs
  end

  def new
    @log = Log.new
  end
end
