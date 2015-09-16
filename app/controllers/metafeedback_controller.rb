class MetafeedbackController < ApplicationController
  def new
    @all_feedback = Feedback.all ||= "nothing"
    @feedback = @all_feedback.sample
  end

  def create
    Metafeedback.create(metafeedback_params)
    redirect_to '/'
  end

    private

  def metafeedback_params
    params.require(:metafeedback).permit(:specific, :actionable, :kind, :feedback_id)
  end
end
