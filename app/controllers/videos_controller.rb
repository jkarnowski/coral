class VideosController < ApplicationController
  def index
  end

  def show
  end

  def new
  	video_params = params[:video]
  	@video = Video.create(embedded_url: video_params[:embedded_url])
  	@youtube_id = @video.embedded_url[/(=[\d\D]{5,})/].slice(1..-1)
		p "*" * 100
  	p @youtube_id
  end
end
