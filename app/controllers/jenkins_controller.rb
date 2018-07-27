class JenkinsController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_student!, :only => :retrieve_challenge_data 
  def retrieve_challenge_data
    params.each do |c|

      if not c.["examples"].any?
        next
      end

      # challenge_filepaths = []
      # c.["examples"].each do |example|
      #   challenge_filepaths << example["id"]
      # end

      # challenge_filepaths.each do |challenge_filepath|

      # end
      challenge_name = /challenge_\d+/.match(c.["examples"].first["id"])
      challenge_id = Challenge.find_by(name: challenge_name).id
      #use challenge_name to find correct challenge, grab id
      student_id = #use email from JSON to find correct student
      challenge_status = ChallengeStatus.find_by(challenge_id: challenge_id, student_id: student_id)
      #use challenge_id AND this_student to find correct status

      #update number_of_completed (this is what we will use to display/broadcast to users)
        #this logic will have to parse/come up with a number from the JSON response provided

    end
  end

end
