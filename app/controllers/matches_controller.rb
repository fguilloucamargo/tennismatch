class MatchesController < ApplicationController
  def index
    @matches = Match.all
    @requests = Request.where(user_id: current_user)
  end

  def create
    @match = Match.new
    @match.user = Request.find(params["request_id"]).user
    @match.request = Request.find(params["request_id"])
    @match.save
    redirect_to request_matches_path(@match)
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to request_matches_path(@match.request)
  end
end
