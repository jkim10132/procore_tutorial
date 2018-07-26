class JenkinsController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_student!, :only => :retrieve_challenge_data 
  def retrieve_challenge_data
    binding.pry
  end
end
