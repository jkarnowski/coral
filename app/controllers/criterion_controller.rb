class CriterionController < ApplicationController
  def create
    Criterion.create(criterion_params)
  end
  private

  def criterion_params
    params.require(:criterion).permit(:rating, :description)
  end
end
