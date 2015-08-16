class VideosController < ApplicationController
	include VideosHelper
  include SessionsHelper
  def index
    @videos = Video.all
    # videos.each do |video|
    #   @youtube_id = video.embedded_url[/(=[\d\D]{5,})/].slice(1..-1)
    # end
    # @youtube_id
  end

  def show
    @video = Video.find_by(id: params[:id])
    @youtube_id = @video.embedded_url[/(=[\d\D]{5,})/].slice(1..-1)
    @rubric = Rubric.new
  end

  def new

  end

  def create
    p "I'm here"
    p "*" * 100

    video_params = params[:videos]
    @video = Video.create(
      teacher_id: session[:id],
      embedded_url: video_params[:embedded_url]
      )
    @youtube_id = @video.embedded_url[/(=[\d\D]{5,})/].slice(1..-1)
    p current_user
    redirect_to "/teachers/#{current_user.id}"
  end

end
