class StudentPolicy < ApplicationPolicy
  attr_reader :user, :student

  def initialize(user, student)
    @user = user
    @student = student
  end

  def update?
    user.admin?
  end
end
