class TeachersController < ApplicationController
  def index
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
  end

  def create
    @teacher = Teacher.create(teacher_params)

    redirect_to @teacher
  end

  private

# we removed :video from the params to create a new Teacher at signup
  def teacher_params
    params.require(:teachers).permit(:name, :email, :subject, :grade_level)
  end

end
