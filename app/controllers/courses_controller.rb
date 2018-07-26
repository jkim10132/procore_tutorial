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
    #feed in an array with course
    @courses = current_student.courses.all
    @courses.each do |course|
      #parsing through response from Jenkins and look at all tests
        #1. if passed test and status is failed, change challenge status to completed
        #2. if failed test and status is completed, change challenge status to failed
        #3. else don't update the challenge status

    end

    ActionCable.server.broadcast "course", { payload: render_to_string(:show, format: :json) }
  end

  def destroy
    @course.destroy
  end

  private

  def course_params
    params[:course].permit(:name, :challenges, :students)
  end
end
