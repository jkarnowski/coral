class VideosController < ApplicationController
	include VideosHelper
  def index
  end

  def show
    @video = Video.find_by(id: params[:id])
    @youtube_id = @video.embedded_url[/(=[\d\D]{5,})/].slice(1..-1)
    @rubric = Rubric.new
  end

  def new
    video_params = params[:video]

  	@video = Video.create(
  		teacher_id: session[:id], 
  		embedded_url: video_params[:embedded_url]
  		)
  	# Working on using a module here from videos_helper
  	# @youtube_id = get_embed_code(@video)

    @youtube_id = @video.embedded_url[/(=[\d\D]{5,})/].slice(1..-1)
  end

end
