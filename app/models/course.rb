class Course < ApplicationRecord
  has_many :challenges
  has_and_belongs_to_many :students

  validates :students, :uniqueness => {:scope=>:student_id}
  validates :name, :students, :challenges, :presence => true
  validates :name, :challenges, :length => {:minimum => 1}
  validates :name, :uniqueness => true
end
