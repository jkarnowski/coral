class VideosController < ApplicationController
  def index
  end

  def show
  end

  def new
  	video_params = params[:video]
  	@video = Video.create(embedded_url: video_params[:embedded_url])
  	@youtube_id = @video.embedded_url[/(=[\d\D]{5,})&/].slice(1..-1)
  	if @youtube_id[-1] == "&"
  		@youtube_id.slice!(-1)
  	end
  	@youtube_id
  end

end
