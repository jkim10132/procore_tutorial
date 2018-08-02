class JenkinsController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_student!, :only => [:retrieve_challenge_data, :initiate_course] 
  def retrieve_challenge_data
    params.permit!
    new_update = params.to_h
    student = Student.find_by(email: new_update["committer"])
    updates = new_update["examples"]
    successes = new_update["summary"]["example_count"] - new_update["summary"]["failure_count"]
    updates.each do |example|
      unless example.empty?
        challenges = student.challenges.where(file_id: /.+?(?=\[)/.match(example["id"]).to_s )
        challenge_status = student.challenge_statuses.find_by(challenge_id: challenges.ids)
        challenge_status.update(number_of_completed: successes)
        if challenge_status.save!
          @course = challenge_status.course
        end
      end
    end
    if @course
      ActionCable.server.broadcast 'challenge_channel', content: send_challenge_data
    end
  end
  def send_challenge_data
    challenges_hash = {}
    @challenges = @course.challenges.all
    @course.students.each do |student|
      challenge_statuses = student.challenge_statuses
      challenges_hash[student.name.gsub(" ","-")] = @challenges.map do |x|
                                          {
                                            name: x.name.gsub(" ","-"),
                                            number_of_tasks: x.number_of_tasks,
                                            number_of_completed: challenge_statuses.find_by(challenge_id: x.id).number_of_completed
                                          }
                                       end
    end
    challenges_hash
  end

  def initiate_course
    params.permit!
    new_update = params.to_h
    updates = new_update["examples"]
    course = Course.find_by(name: new_update["course_name"])
    unless course
      course = Course.new(name: new_update["course_name"])
    end
    updates.map do |example|
      unless example.empty?
        Challenge.create(name:example["id"].split("/")[1], file_id: /.+?(?=\[)/.match(example["id"]).to_s, number_of_tasks: new_update["summary"]["example_count"], course: course)
      end
    end
    course.save!
  end
  private

  def challenge_data_params
    params.permit!
  end
end
