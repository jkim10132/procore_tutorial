class JenkinsController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_student!, :only => :retrieve_challenge_data 
  def retrieve_challenge_data
    params.permit!
    new_update = params.to_h
    student = Student.find_by(email: new_update["committer"])
    updates = new_update["examples"]
    updates.each do |example|
      challenges = student.challenges.where(file_id: example["id"])
      challenge_status = student.challenge_statuses.find_by(challenge_id: challenges.ids)
      challenge_status.increment
      challenge_status.save!
    end
    head :ok
  end

  def update_challenges(updates)

  end
end
