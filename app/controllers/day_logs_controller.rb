# manages daily steps logs
class DayLogsController < ApplicationController
  before_action :set_day_log, only: %i[show update destroy]

  def index
    @day_logs = DayLog.all
  end

  def show
  end

  def create
    @day_log = DayLog.new(day_log_params)

    if @day_log.save
      render :show, status: :created, location: @day_log
    else
      render json: @day_log.errors, status: :unprocessable_entity
    end
  end

  def update
    if @day_log.update(day_log_params)
      render :show, status: :ok, location: @day_log
    else
      render json: @day_log.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @day_log.destroy
      head :no_content
    else
      render json: @day_log.errors, status: :unprocessable_entity
    end
  end

  private

  def set_day_log
    @day_log = DayLog.find(params[:id])
  end

  def day_log_params
    params.require(:day_log).permit(:steps, :taken_on)
  end
end
