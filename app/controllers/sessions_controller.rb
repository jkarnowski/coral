class SessionsController < ApplicationController
  include SessionsHelper
  def new

  end

  def create
    @teacher = Teacher.find_by(email: params[:sessions][:email])
    session[:id] = @teacher.id
    redirect_to "/videos"
  end

  def destroy
  end
end
