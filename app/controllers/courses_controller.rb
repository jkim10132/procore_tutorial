class CoursesController < ApplicationController
  def index
    @courses = current_student.courses.all.uniq
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

  def add_student_to_course
     Course.find(params[:course_id]).students << Student.find(params[:student_id])
     redirect_to root_url
  end

  private
  
  def course_params
    params[:course].permit(:name, :challenges, :students)
  end

end
