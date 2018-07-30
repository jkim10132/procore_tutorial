class ChallengeStatus < ApplicationRecord
  belongs_to :student
  belongs_to :challenge
  belongs_to :course
  before_save :check_status
  def check_status
    if (self[:number_of_completed] == self.challenge.number_of_tasks)
      self[:status] = true
    else
      self[:status] = false
    end
  end


  def increment
    self[:number_of_completed] ||= 0
    self[:number_of_completed] += 1
  end
end
