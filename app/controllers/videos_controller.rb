class VideosController < ApplicationController
	include VideosHelper
  def index
    @videos = Video.all
    # videos.each do |video|
    #   @youtube_id = video.embedded_url[/(=[\d\D]{5,})/].slice(1..-1)
    # end
    # @youtube_id
  end

  def show
    @video = Video.find_by(id: params[:id])
    url = @video.embedded_url || ""
    # temp = url[/(=[\d\D]{5,})/] || ""
    # @youtube_id = temp.slice(1..-1)
    @rubric = Rubric.new
  end

  def new
    video_params = params[:video] || params[:videos] || {}
    temp = @video.embedded_url[/(=[\d\D]{5,})/] || ""
    youtube_id = temp.slice(1..-1)
  	@video = Video.create(
  		teacher_id: session[:id],
  		embedded_url: video_params[:embedded_url] || "",
      title: video_params[:title],
      youtube_id: youtube_id
  		)
  	# Working on using a module here from videos_helper
  	# @youtube_id = get_embed_code(@video)
  end

end
