class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @requests = Request.all
  end

  def show
  end

  def new
    @request = Requests.new
  end

  def create
  end

  def destroy
  end
end
