class VideosController < ApplicationController
	include VideosHelper
  include SessionsHelper

  def index
    @videos = Video.all
    @videos = @videos.sort_by {|obj| obj.teacher.grade_level}
    # videos.each do |video|
    #   @youtube_id = video.embedded_url[/(=[\d\D]{5,})/].slice(1..-1)
    # end
    # @youtube_id
  end

  def show
    @video = Video.find_by(id: params[:id])
    @rubric = Rubric.new
  end

  def new
  end

  def sorted_by_subject
    @videos = Video.all
    @videos = @videos.sort_by {|obj| obj.teacher.subject}
    p 'GOT TO SORTed BY SUB'
    render :index

  end

  def sorted_by_grade_level
    @videos = Video.all
    @videos = @videos.sort_by {|obj| obj.teacher.grade_level}
    p 'got to sort by graade'
    render :index
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
