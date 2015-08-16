class VideosController < ApplicationController
	include VideosHelper
  def index
  end

  def show
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
  	# p @youtube_id
  	# p video_params
  	# p @video
  	@youtube_id = @video.embedded_url[/(=[\d\D]{5,}&{1})/].slice(1..-1)
  	if @youtube_id[-1] == "&"
  		@youtube_id.slice!(-1)
  	end
  	@youtube_id
  end

end
