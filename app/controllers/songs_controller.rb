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

  def create
    @song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
    )
    @song.save
    render :show
    # render json: { message: "hello created song" }
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title] || @song.title
    @song.album = params[:album] || @song.album
    @song.artist = params[:artist] || @song.artist
    @song.year = params[:year] || @song.year
    # render json: { message: "hello created song" }
    @song.save
    render :show
  end
end
