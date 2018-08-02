class Course < ApplicationRecord
  has_many :challenges, :dependent => :destroy
  has_and_belongs_to_many :students
  after_update :add_challenge_status_to_students



  def add_challenge_status_to_students
    self.students.each do |student|
      self.challenges.each do |challenge|
        ChallengeStatus.create(student: student, challenge: challenge, course: self, number_of_completed: 0)
      end
    end
  end
  # validates :students, :uniqueness => {:scope=>:student_id}
  # validates :name, :presence => true
  # # validates :name, :length => {:minimum => 1}
  # validates :name, :uniqueness => true
end
