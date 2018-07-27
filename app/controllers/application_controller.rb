class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :authenticate_student!

  def pundit_user
    current_student
  end
end
