class CoursesController < ApplicationController
  def index
    @courses = current_student.courses.all
  end

  def show
    @student = current_student
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(course_params)
    if !@course.save
      flash[:notice] = 'Course was not saved'
      #Add redirect?
    end
  end

  def update
    @course.update(course_params)
  end

  def destroy
    @course.destroy
  end

  private

  def course_params
    params[:course].permit(:name, :challenges, :students)
  end
end
