class ChallengesController < ApplicationController
  def index
    @challenges = Student.find(params[:student_id]).courses.find(params[:course_id]).challenges.all
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def new
    @challenge = Challenge.new
  end

  def edit
    @challenge = Challenge.find(params[:id])
  end

  def create
    @challenge = Challenge.new(challenge_params)
    authorize @challenge
    if !@challenge.save
      flash[:notice] = 'challenge was not saved'
      #Add redirect?
    end
  end

  def update
    authorize @challenge
    @challenge.update(challenge_params)
  end

  def destroy
    authorize @challenge
    @challenge.destroy
  end

  private

  def challenge_params
    params[:challenge].permit(:name, :number_of_tasks)
  end
end
