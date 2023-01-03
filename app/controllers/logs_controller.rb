class LogsController < ApplicationController
  before_action :correct_user, only: [:edit]

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

  def edit
    @log = Log.find(params[:id])
    @user = current_user
  end

  def create
    @log = Log.new(log_params)
    @log.user_id = current_user.id
    @log.save
    redirect_to log_path(@log)
  end

  def update
    @log = Log.find(params[:id])
    if @log.update(book_params)
      flash[:notice] = 'You have updated book successfully.'
      redirect_to log_path(@log)
    else
      render :edit
    end
  end

  def destroy
    log = Log.find(params[:id])
    log.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def log_params
    params.require(:log).permit(:title, :achieve, :study_record, :category_id, :keep, :try, :problem )
  end

  def correct_user
    @log = Log.find(params[:id])
    if @log.user_id!= current_user.id
      redirect_to logs_path
    end
  end
end
