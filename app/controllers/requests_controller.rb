class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user

    if @request.save
      redirect_to request_matches_path(@request)
    else
      render :new
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to request_matches_path(@request)
  end

  private

  def request_params
    params.require(:request).permit(:date, :time, :location)
  end

  private

  def request_params
    params.require(:request).permit(:date, :time, :location)
  end
end
