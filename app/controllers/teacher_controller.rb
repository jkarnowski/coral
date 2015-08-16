class TeacherController < ApplicationController
  def index
  end

  def show
  end

  def create
    @teacher = Teacher.create(teacher_params)
  end

  private

  def teacher_params
    params.require(:teacher).permit(:video)
  end

end
