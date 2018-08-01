class ChallengesController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
    @course = @student.courses.find(params[:course_id])
    @challenges = @course.challenges.all
    @challenge_statuses = @student.challenge_statuses
    @challenges_hash = @challenges.map do |x|
                          {
                            name: x.name.gsub(" ","-"),
                            number_of_tasks: x.number_of_tasks,
                            number_of_completed: @challenge_statuses.find_by(challenge_id: x.id).number_of_completed
                          }
                       end  
  end


  def updateChallenges
    @student = Student.find(params[:student_id])
    @course = @student.courses.find(params[:course_id])
    @challenges = @course.challenges.all
    @challenge_statuses = @student.challenge_statuses
    render json: {status: 'SUCCESS', messasge: 'LOADED QUATERLY INVOICES', data: @challenges}, status: :ok
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
