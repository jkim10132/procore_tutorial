class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if !@student.save
      flash[:notice] = 'Student was not saved'
      #Add redirect?
    end
  end

  def update
    @student.update(student_params)
  end

  def destroy
    @student.destroy
  end

  private

  def student_params
    params[:student].permit(:name, :team, :courses, :username, :password)
  end
end
