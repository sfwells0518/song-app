class SongsController < ApplicationController
  def index
    @songs = Song.all
    render :index
    # render json: { message: "hello song index" }
  end

  def show
    @song = Song.find_by(id: params[:id])
    render :show
    # render json: { message: "hello song" }
  end
end
