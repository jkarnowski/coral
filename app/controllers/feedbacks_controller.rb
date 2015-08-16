class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def create
    Feedback.create(feedback_params)
    # redirect_to
  end

    private

  def feedback_params
    params.require(:feedbacks).permit(:content)
  end
end
