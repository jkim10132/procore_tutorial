class Course < ApplicationRecord
  has_many :challenges
  has_and_belongs_to_many :students

  # validates :students, :uniqueness => {:scope=>:student_id}
  # validates :name, :presence => true
  # # validates :name, :length => {:minimum => 1}
  # validates :name, :uniqueness => true
end
