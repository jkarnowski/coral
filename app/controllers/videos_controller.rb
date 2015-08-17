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
    @rubric = Rubric.new
    @feedbacks = @video.feedbacks
    @metafeedbacks = Metafeedback.all
    @relevent_metafeedback = []

    @feedbacks.each do |feedback|
      @metafeedbacks.each do |metafeedback|
        if metafeedback.feedback_id == feedback.id
          @relevent_metafeedback << metafeedback
        end
      end
    end

    p "_" * 100
    p @feedbacks
  end

  def new
  end

  def sorted_by_subject
    @videos = Video.all
    @videos = @videos.sort_by {|obj| obj.teacher.subject}
    render :index

  end

  def sorted_by_grade_level
    @videos = Video.all
    @videos = @videos.sort_by {|obj| obj.teacher.grade_level}
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

  def destroy
    Video.find(params[:id]).destroy
    redirect_to "/teachers/#{current_user.id}"
  end




end
