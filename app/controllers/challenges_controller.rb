class ChallengesController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
    @challenges = @student.courses.find(params[:course_id]).challenges.all
    @challenge_statuses = @student.challenge_statuses
  end

  def show
    @challenge = Challenge.find(params[:id])
    @student = Student.find(params[:student_id])
  end

  def new
    @challenge = Challenge.new
  end

  def edit
    @challenge = Challenge.find(params[:id])
  end

  def create
    @challenge = Challenge.new(challenge_params)
    if !@challenge.save
      flash[:notice] = 'challenge was not saved'
      #Add redirect?
    end
  end

  def update
    @challenge.update(challenge_params)
  end

  def destroy
    @challenge.destroy
  end

  private

  def challenge_params
    params[:challenge].permit(:name, :number_of_tasks)
  end
end
