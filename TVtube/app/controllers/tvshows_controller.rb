class TvshowsController < ApplicationController
  def index
    shows = Tvshow.all
    render json: shows
  end

  def show
    show = Tvshow.find(params[:id])
    render json: show
  end
end
