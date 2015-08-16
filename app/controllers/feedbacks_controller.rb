class FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def create
    p "*" * 100
    p params
    Feedback.create(feedback_params)
    redirect_to :back
  end

    private

  def feedback_params
    params.require(:feedback).permit(:content, :teacher_id, :video_id)
  end
end
