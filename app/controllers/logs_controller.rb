class LogsController < ApplicationController
  def new
    @log = Log.new
  end

  def index
    @logs = Log.all
  end

  def show
    @log = Log.find(params[:id])
    @logs = Log.all
  end

  def create
    @log = Log.new(log_params)
    @log.save
    redirect_to log_path(@log)
  end

  private

  def log_params
    params.require(:log).permit(:title, :achieve, :study_record)
  end
end
