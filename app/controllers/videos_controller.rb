class VideosController < ApplicationController
  def index
  end

  def show
    @rubric = Rubric.new
  end
end
