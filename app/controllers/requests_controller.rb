class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def request_params
    params.require(:request).permit(:date, :time, :location)
  end
end

