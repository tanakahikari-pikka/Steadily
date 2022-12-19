class LogsController < ApplicationController
  def new
    @log = Log.new
  end

  def index
    @logs = Log.all
  end

  def show
    @user = current_user
    @log = Log.find(params[:id])
    @logs = @user.logs
  end

  def create
    @log = Log.new(log_params)
    @log.user_id = current_user.id
    @log.save
    redirect_to log_path(@log)
  end

  private

  def log_params
    params.require(:log).permit(:title, :achieve, :study_record)
  end
end
