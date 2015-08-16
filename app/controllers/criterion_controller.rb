class CriterionController < ApplicationController

  def create
    Criterion.create(criterion_params)
    redirect_to :back
  end
  private

  def criterion_params
    params.require(:criterion).permit(:rating, :description)
  end

end
