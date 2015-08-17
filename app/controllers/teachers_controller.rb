class TeachersController < ApplicationController
  include SessionsHelper
  def index
  end

  def show
    p params
    p "*" * 100
    @teacher = Teacher.find_by(id: params[:id])
    @videos = @teacher.videos
  end

  def new
  end

  def create
    @teacher = Teacher.create(teacher_params)
    session[:id] = @teacher.id
    redirect_to @teacher
  end

  def edit

  end

  def update
    p params
    p "^" * 100
    teacher = Teacher.find_by(id: current_user.id)
    teacher.update_attributes(name: params[:teachers][:name], bio: params[:teachers][:bio], subject: params[:teachers][:subject], grade_level: params[:teachers][:grade_level])
    teacher.save
    redirect_to "/teachers/#{current_user.id}"
  end

  private

# we removed :video from the params to create a new Teacher at signup
  def teacher_params
    params.require(:teachers).permit(:name, :email, :subject, :grade_level)
  end

end
