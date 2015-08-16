class VideosController < ApplicationController
	include VideosHelper
  include SessionsHelper

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find_by(id: params[:id])
    @rubric = Rubric.new
  end

  def new
  end

  def create
    video_params = params[:video] || params[:videos] || {}
    temp = video_params["embedded_url"][/(=[\d\D]{5,})/] || ""
    youtube_id = temp.slice(1..-1)
    @video = Video.create(
      teacher_id: session[:id],
      embedded_url: video_params[:embedded_url],
      title: video_params[:title],
      youtube_id: youtube_id
      )
    redirect_to "/teachers/#{current_user.id}"
  end

end
