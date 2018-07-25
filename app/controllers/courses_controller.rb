class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy
    @course.destroy
  end

  private
end
